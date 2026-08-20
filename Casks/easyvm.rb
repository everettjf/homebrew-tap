# typed: strict
# frozen_string_literal: true

cask "easyvm" do
  version "3.2.3"
  sha256 "17cd5c5abda82d7fac610d374297f83984d7a93d083287f3f5f083f7c238c89e"

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
