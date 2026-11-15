cask "machoexplorer" do
  version "3.0.0"
  sha256 "fee79eb47183a97d641df76e164ef0106a8558b93d8113e35ef5b5fde271b888"

  url "https://github.com/everettjf/MachOExplorer/releases/download/v3.0.0/MachOExplorer.dmg"
  name "MachOExplorer"
  desc "Mach-O and archive explorer"
  homepage "https://atomsprout.com/machoexplorer/"

  depends_on :macos

  app "MachOExplorer.app"
end
