class HexloraCli < Formula
  desc "Static application, package, and binary inspection workbench"
  homepage "https://github.com/everettjf/hexlora"
  url "https://github.com/everettjf/homebrew-tap/releases/download/hexlora-v1.1.18/hexlora-cli-1.1.18-aarch64-apple-darwin.tar.gz"
  sha256 "5b8fc58cf0292bd5dc36fd858e3429ec8df50bfa30d2c86437c3a61eac16407e"
  license "Apache-2.0"

  depends_on arch: :arm64

  def install
    bin.install "hexlora-cli"
  end

  test do
    (testpath/"fixture.json").write('{"hexlora":true}')
    output = shell_output("#{bin}/hexlora-cli inspect #{testpath}/fixture.json --json")
    report = JSON.parse(output)
    assert_equal 1, report.fetch("schema_version")
    assert_equal false, report.dig("run", "partial")
  end
end
