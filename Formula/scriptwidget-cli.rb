class ScriptwidgetCli < Formula
  desc "Native widget validation and previews for Coding Agent workflows"
  homepage "https://github.com/everettjf/scriptwidget"
  version "0.2.1"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/everettjf/scriptwidget/releases/download/cli-v0.2.1/scriptwidget-cli-0.2.1-macos-arm64.zip"
    sha256 "d7c4ce71386b761d2e68d45592b2fe45d06efd6d8c6ad61d89da3752f9f441fe"
  end
  on_intel do
    url "https://github.com/everettjf/scriptwidget/releases/download/cli-v0.2.1/scriptwidget-cli-0.2.1-macos-x86_64.zip"
    sha256 "e0ba4e36f50955660c41d408ac2aab55fcc625565eb3c8fbb1cbddc300358a8c"
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
