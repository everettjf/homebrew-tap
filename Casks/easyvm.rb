# typed: strict
# frozen_string_literal: true

cask "easyvm" do
  version "3.3.1"
  sha256 "a1d9d26e11917403e9e278d9208a64a17b3155ad99341155c067e5f32a7fdee1"

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
