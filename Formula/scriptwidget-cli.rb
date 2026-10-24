class ScriptwidgetCli < Formula
  desc "Native widget validation and previews for Coding Agent workflows"
  homepage "https://github.com/everettjf/scriptwidget"
  version "0.1.0"
  revision 1
  license "MIT"

  on_arm do
    url "https://github.com/everettjf/scriptwidget/releases/download/cli-v0.1.0/scriptwidget-cli-0.1.0-macos-arm64.zip"
    sha256 "0f3e1bc1cc6d06d693f989bb703e1fc874a1f1954824e2e4ccc714d6094fbae5"
  end
  on_intel do
    url "https://github.com/everettjf/scriptwidget/releases/download/cli-v0.1.0/scriptwidget-cli-0.1.0-macos-x86_64.zip"
    sha256 "5f2d94acb8e3b938a3bd621c27e7b09c0fed6e89d48173a652adf1a68a4dae2e"
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
    (testpath/"Widget").mkpath
    (testpath/"Widget/widget.json").write <<~JSON
      {"formatVersion":2,"id":"com.example.brew-test","name":"Brew Test","version":"1.0.0","runtimeVersion":"1.0","entry":"main.jsx","supportedFamilies":["systemMedium"],"permissions":[],"networkDomains":[]}
    JSON
    (testpath/"Widget/main.jsx").write('$render(<text>Homebrew</text>);')
    report = JSON.parse(shell_output("#{bin}/scriptwidget check #{testpath}/Widget --format json"))
    assert_equal "passed", report.fetch("status")
    assert_equal "notRun", report.dig("checks", "execute")
    (testpath/"Widget/widget.json").write('{"formatVersion":99}')
    report = JSON.parse(shell_output("#{bin}/scriptwidget check #{testpath}/Widget --format json", 1))
    assert_equal "failed", report.fetch("status")
  end
end
