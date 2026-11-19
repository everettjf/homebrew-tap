cask "machoexplorer" do
  version "3.0.2"
  sha256 "d31278a31ba2317d5eaca370ad193b514a4b48d032f739acbf603bdb8503356f"

  url "https://github.com/everettjf/MachOExplorer/releases/download/v3.0.2/MachOExplorer.dmg"
  name "MachOExplorer"
  desc "Mach-O and archive explorer"
  homepage "https://asp.run/machoexplorer/"

  depends_on :macos

  app "MachOExplorer.app"
end
