# typed: strict
# frozen_string_literal: true

cask "ezvm" do
  version "1.0.2"
  sha256 "3f907a0a6b7706dc38e5a9cdb5970749ef1df6d7dc0636284bf6b80704ae6137"

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
