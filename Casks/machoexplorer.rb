cask "machoexplorer" do
  version "2.0.17"
  sha256 "718cd53aabffe16570419a2481579bf49d9eab6bfea7c2dc5b82851356d12114"

  url "https://github.com/everettjf/MachOExplorer/releases/download/v2.0.17/MachOExplorer.dmg"
  name "MachOExplorer"
  desc "Mach-O and archive explorer"
  homepage "https://atomsprout.com/machoexplorer/"

  depends_on :macos

  app "MachOExplorer.app"
end
