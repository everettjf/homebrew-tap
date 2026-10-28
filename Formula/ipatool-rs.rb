class IpatoolRs < Formula
  desc "Experimental Rust rewrite of App Store and FairPlay command-line tools"
  homepage "https://github.com/everettjf/ipatool-rs"
  url "https://github.com/everettjf/ipatool-rs/releases/download/v0.2.1/ipatool-rs-0.2.1-macos-arm64.tar.gz"
  sha256 "0a76ee9aa92b3d67adc987633529448da8353c506698d098a5fe44b82d9c8dbd"
  license all_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "ipatool-rs"
    pkgshare.install "LICENSE", "NOTICE", "licenses"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/ipatool-rs --version")
    assert_match "search", shell_output("#{bin}/ipatool-rs --help")
  end
end
