# typed: strict
# frozen_string_literal: true

cask "ezvm" do
  version "5.0.2"
  sha256 "abde7937bac2b0df4fcaf7c25b783227bbefbe2c49040689d067fdfc9ad5e80f"

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
