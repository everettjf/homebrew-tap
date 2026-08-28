# typed: strict
# frozen_string_literal: true

cask "ezvm" do
  version "1.0.0"
  sha256 "3933a1f28327035338b1892ca2fde19d88836ad5fc7093147683f04c1f5d5bb9"

  url "https://github.com/everettjf/ezvm/releases/download/v#{version}/EZVM-#{version}.zip?notarized=1"
  name "EZVM"
  desc "Simple native virtual machines for Apple silicon Macs"
  homepage "https://xnu.app/ezvm"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "EZVM.app"
  binary "#{appdir}/EZVM.app/Contents/Helpers/ezvm"

  zap trash: [
    "~/Library/Application Support/EZVM",
    "~/Library/Preferences/com.everettjf.ezvm.plist",
    "~/Library/Saved Application State/com.everettjf.ezvm.savedState",
  ]
end
