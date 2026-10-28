class IpatoolRs < Formula
  desc "Experimental Rust rewrite of App Store and FairPlay command-line tools"
  homepage "https://github.com/everettjf/ipatool-rs"
  url "https://github.com/everettjf/ipatool-rs/releases/download/v0.1.0-preview.3/ipatool-rs-0.1.0-preview.3-macos-arm64.tar.gz"
  version "0.1.0-preview.3"
  sha256 "88d8a59ebde3e9086fe4da5b3d099681edc6a6003b2e30747ff3aec8af28f1ab"
  license all_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "ipatool-rs"
    pkgshare.install "LICENSE", "NOTICE", "licenses"
  end

  test do
    assert_match "0.1.0-preview.3", shell_output("#{bin}/ipatool-rs --version")
    assert_match "search", shell_output("#{bin}/ipatool-rs --help")
  end
end
