class IpatoolRs < Formula
  desc "Experimental Rust rewrite of App Store and FairPlay command-line tools"
  homepage "https://github.com/everettjf/ipatool-rs"
  url "https://github.com/everettjf/ipatool-rs/releases/download/v0.1.0-preview.2/ipatool-rs-0.1.0-preview.2-macos-arm64.tar.gz"
  version "0.1.0-preview.2"
  sha256 "72ebed3f6d770c88927693b529d424da97c9fe4bd587f7bec8a2cf67e819c105"
  license all_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "ipatool-rs"
    pkgshare.install "LICENSE", "NOTICE", "licenses"
  end

  test do
    assert_match "0.1.0-preview.2", shell_output("#{bin}/ipatool-rs --version")
    assert_match "search", shell_output("#{bin}/ipatool-rs --help")
  end
end
