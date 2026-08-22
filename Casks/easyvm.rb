# typed: strict
# frozen_string_literal: true

cask "easyvm" do
  version "3.2.19"
  sha256 "3f5eda22e8f46ae0b1f933be79094690c5ab4731a66c5e6ff2ed3cfa58200ec4"

  url "https://github.com/everettjf/easyvm/releases/download/v#{version}/EasyVM-#{version}.zip?notarized=1"
  name "EasyVM"
  desc "Simple native virtual machines for Apple silicon Macs"
  homepage "https://xnu.app/easyvm"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "EasyVM.app"

  zap trash: [
    "~/Library/Application Support/EasyVM",
    "~/Library/Preferences/com.everettjf.easyvm.plist",
    "~/Library/Saved Application State/com.everettjf.easyvm.savedState",
  ]
end
