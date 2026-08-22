# typed: strict
# frozen_string_literal: true

cask "easyvm" do
  version "3.3.0"
  sha256 "2c4c95a2f88d7b98fbdc0c1e3a079337918898b2f02734d878b624f8019ad194"

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
