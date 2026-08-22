# typed: strict
# frozen_string_literal: true

cask "easyvm" do
  version "3.2.21"
  sha256 "8ff2f8df7209c8feca8b3a2447ebee8700961bd43c5daac773768f0823ca4d1d"

  url "https://github.com/everettjf/easyvm/releases/download/v#{version}/EasyVM-#{version}.zip?notarized=1"
  name "EasyVM"
  desc "Simple native virtual machines for Apple silicon Macs"
  homepage "https://xnu.app/easyvm"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "EasyVM.app"
  binary "#{appdir}/EasyVM.app/Contents/Helpers/easyvm"

  zap trash: [
    "~/Library/Application Support/EasyVM",
    "~/Library/Preferences/com.everettjf.easyvm.plist",
    "~/Library/Saved Application State/com.everettjf.easyvm.savedState",
  ]
end
