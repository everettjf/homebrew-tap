class BytetrawlCli < Formula
  desc "Static application, package, and binary inspection workbench"
  homepage "https://github.com/everettjf/bytetrawl"
  url "https://github.com/everettjf/homebrew-tap/releases/download/bytetrawl-v1.1.14/bytetrawl-cli-1.1.14-aarch64-apple-darwin.tar.gz"
  sha256 "870d62cfaa98e5b5261cad012686175b0d2a8f11d5f8a70f02282c691e3ca073"
  license "Apache-2.0"

  depends_on arch: :arm64

  def install
    bin.install "bytetrawl-cli"
  end

  test do
    (testpath/"fixture.json").write('{"bytetrawl":true}')
    output = shell_output("#{bin}/bytetrawl-cli inspect #{testpath}/fixture.json --json")
    report = JSON.parse(output)
    assert_equal 1, report.fetch("schema_version")
    assert_equal false, report.dig("run", "partial")
  end
end
