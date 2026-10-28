class IpatoolRs < Formula
  desc "Experimental Rust rewrite of App Store and FairPlay command-line tools"
  homepage "https://github.com/everettjf/ipatool-rs"
  url "https://github.com/everettjf/ipatool-rs/releases/download/v0.2.0/ipatool-rs-0.2.0-macos-arm64.tar.gz"
  sha256 "54a8f8660706a525d5a3ee091148fcf46e24c3e6cc59135f32e674f88e64738f"
  license all_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "ipatool-rs"
    pkgshare.install "LICENSE", "NOTICE", "licenses"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/ipatool-rs --version")
    assert_match "search", shell_output("#{bin}/ipatool-rs --help")
  end
end
