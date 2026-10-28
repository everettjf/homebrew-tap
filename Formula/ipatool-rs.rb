class IpatoolRs < Formula
  desc "Experimental Rust rewrite of App Store and FairPlay command-line tools"
  homepage "https://github.com/everettjf/ipatool-rs"
  url "https://github.com/everettjf/ipatool-rs/releases/download/v0.1.0-preview.1/ipatool-rs-0.1.0-preview.1-macos-arm64.tar.gz"
  version "0.1.0-preview.1"
  sha256 "ed1053140087115e95326326aaa23f9a9f7ec72b1b2c6aed3ef860fd831077fa"
  license all_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "ipatool-rs"
    pkgshare.install "LICENSE", "NOTICE", "licenses"
  end

  test do
    assert_match "0.1.0-preview.1", shell_output("#{bin}/ipatool-rs --version")
    assert_match "search", shell_output("#{bin}/ipatool-rs --help")
  end
end
