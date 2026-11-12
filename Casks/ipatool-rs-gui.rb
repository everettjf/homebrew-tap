cask "ipatool-rs-gui" do
  version "0.3.1"
  sha256 "d380563811f48f522168b61e4de066d445a85da924d4c8e036d8d9dd7fe23ba7"

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
