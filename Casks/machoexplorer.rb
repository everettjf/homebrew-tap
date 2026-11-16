cask "machoexplorer" do
  version "3.0.1"
  sha256 "2a57ed04c4c57c39671f8f7edc901056cd4d64039440225d2fa88e6c57b1621f"

  url "https://github.com/everettjf/MachOExplorer/releases/download/v3.0.1/MachOExplorer.dmg"
  name "MachOExplorer"
  desc "Mach-O and archive explorer"
  homepage "https://asp.run/machoexplorer/"

  depends_on :macos

  app "MachOExplorer.app"
end
