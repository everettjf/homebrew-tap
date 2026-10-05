cask "hexlora" do
  version "1.1.18"
  sha256 "eeb21158f112236c0c3c9106dacac0b0b06e9ccfc321b8e34070ded4ca511de9"

  url "https://github.com/everettjf/homebrew-tap/releases/download/hexlora-v#{version}/Hexlora-#{version}-macos.zip"
  name "Hexlora"
  desc "Application, package, and binary inspection workbench"
  homepage "https://github.com/everettjf/hexlora"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Hexlora.app"

  zap trash: "~/Library/Application Support/Hexlora"
end
