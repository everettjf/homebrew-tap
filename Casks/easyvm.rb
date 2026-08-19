# typed: strict
# frozen_string_literal: true

cask "easyvm" do
  version "3.1.0"
  sha256 "c5d00c7b3e563c6da5d175c9f340fdf7ccd32166eaa38e3680c6e1a1ef4a17ac"

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
