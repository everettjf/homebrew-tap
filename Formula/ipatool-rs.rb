class IpatoolRs < Formula
  desc "Experimental Rust rewrite of App Store and FairPlay command-line tools"
  homepage "https://github.com/everettjf/ipatool-rs"
  url "https://github.com/everettjf/ipatool-rs/releases/download/v0.1.0-preview.1/ipatool-rs-0.1.0-preview.1-macos-arm64.tar.gz"
  version "0.1.0-preview.1"
  sha256 "625b978cdf5df7d29bf0203df3866beff86b494d2415f4a28c8204d452ac6619"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "ipatool-rs"
  end

  test do
    assert_match "0.1.0-preview.1", shell_output("#{bin}/ipatool-rs --version")
    assert_match "search", shell_output("#{bin}/ipatool-rs --help")
  end
end
