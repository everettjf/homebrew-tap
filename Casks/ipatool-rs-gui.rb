cask "ipatool-rs-gui" do
  version "0.3.0"
  sha256 "dcb8352f95df6fda343d10b9127b2537d61c33bab59391afa489c02e00c13e06"

  url "https://github.com/everettjf/ipatool-rs/releases/download/v#{version}/ipatool-rs-#{version}-gui-macos-arm64.zip"
  name "IPATOOL-RS"
  desc "Experimental native App Store and FairPlay desktop in Rust"
  homepage "https://github.com/everettjf/ipatool-rs"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "IPATOOL-RS.app"

  caveats <<~EOS
    Protected FairPlay preparation requires macOS 13 or later and explicit
    administrator approval. Remove collection access in the app before
    uninstalling. Account state, downloads and private models are preserved.
  EOS
end
