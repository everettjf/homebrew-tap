# typed: strict
# frozen_string_literal: true

cask "easyvm" do
  version "3.2.20"
  sha256 "d351ec27bf5fe44c114dc16affd1e0141d339878219f4f152e4f1ac665faba1a"

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
