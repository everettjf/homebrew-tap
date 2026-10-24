class ScriptwidgetCli < Formula
  desc "Native widget validation and previews for Coding Agent workflows"
  homepage "https://github.com/everettjf/scriptwidget"
  version "0.2.0"
  license "MIT"

  on_arm do
    url "https://github.com/everettjf/scriptwidget/releases/download/cli-v0.2.0/scriptwidget-cli-0.2.0-macos-arm64.zip"
    sha256 "d0e9bb17eeefb2521b2f500ea0bf6dce6d88f973529f9f99b08b063f7c68560f"
  end
  on_intel do
    url "https://github.com/everettjf/scriptwidget/releases/download/cli-v0.2.0/scriptwidget-cli-0.2.0-macos-x86_64.zip"
    sha256 "0a99ffbb48f244793cb1168f0a1b81f14b0b1e70418f76963b769cae6044e443"
  end

  depends_on macos: :tahoe

  def install
    # ditto merges AppleDouble metadata instead of leaving extra sealed-bundle files.
    payload = buildpath/"signed-payload"
    system "/usr/bin/ditto", "-x", "-k", cached_download, payload
    libexec.install payload/"ScriptWidgetCLI.app"
    (bin/"scriptwidget").write <<~SH
      #!/bin/sh
      exec "#{libexec}/ScriptWidgetCLI.app/Contents/MacOS/scriptwidget" "$@"
    SH
    (bin/"scriptwidget").chmod 0755
  end

  test do
    report = JSON.parse(shell_output("#{bin}/scriptwidget doctor --format json"))
    assert_equal "passed", report.fetch("status")
    assert_equal "valid", report.fetch("signature")
    assert_equal true, report.fetch("workerSandbox")
    assert_path_exists Pathname(report.fetch("skillPath"))/"SKILL.md"

    # Homebrew's outer sandbox prevents App Sandbox activation. Native execution
    # is exercised separately in release/CI smoke tests; verify controller denial here.
    (testpath/"Widget").mkpath
    (testpath/"outside.txt").write("outside")
    (testpath/"Widget/escape").make_symlink(testpath/"outside.txt")
    report = JSON.parse(shell_output("#{bin}/scriptwidget check #{testpath}/Widget --format json", 1))
    assert_equal "failed", report.fetch("status")
    assert_equal "package.path", report.fetch("diagnostics").first.fetch("code")
  end
end
