# typed: strict
# frozen_string_literal: true

cask "ezvm" do
  version "5.0.3"
  sha256 "1a99e2bed845d01db0d9e1f5efab9eda381ffee768cb15730f0880c2aea0c43f"

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
