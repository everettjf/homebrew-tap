# typed: strict
# frozen_string_literal: true

cask "easyvm" do
  version "3.2.22"
  sha256 "9c2c67c0792791767f3f9c0063f69dbe3e220ada455f8cd907e251fa7c4888cb"

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
