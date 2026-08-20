# typed: strict
# frozen_string_literal: true

cask "easyvm" do
  version "3.2.4"
  sha256 "ed2cc840c8f18da4c369f41251689355f6c49d5d88812bdf7fcf3f10e3956741"

  url "https://github.com/everettjf/easyvm/releases/download/v#{version}/EasyVM-#{version}.zip"
  name "EasyVM"
  desc "Simple native virtual machines for Apple silicon Macs"
  homepage "https://everettjf.github.io/easyvm/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "EasyVM.app"

  zap trash: [
    "~/Library/Application Support/EasyVM",
    "~/Library/Preferences/com.everettjf.easyvm.plist",
    "~/Library/Saved Application State/com.everettjf.easyvm.savedState",
  ]
end
