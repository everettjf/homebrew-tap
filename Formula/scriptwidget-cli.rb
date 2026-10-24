class ScriptwidgetCli < Formula
  desc "Native widget validation and previews for Coding Agent workflows"
  homepage "https://github.com/everettjf/scriptwidget"
  version "0.1.1"
  license "MIT"

  on_arm do
    url "https://github.com/everettjf/scriptwidget/releases/download/cli-v0.1.1/scriptwidget-cli-0.1.1-macos-arm64.zip"
    sha256 "ad5ff97fe765a45553038c6e34692935b3b14c6c17f3c096d44733b43e4378c0"
  end
  on_intel do
    url "https://github.com/everettjf/scriptwidget/releases/download/cli-v0.1.1/scriptwidget-cli-0.1.1-macos-x86_64.zip"
    sha256 "da134d5546f0878f3ccd7642d3dae881151531beaf62ad2eaeb3ab3e2119dd25"
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
