cask "grapecompare" do
  version "1.0.12"
  sha256 "0c8b26142ac85b97c6e18f27bed69ccd02e75a1024df02c05a805b97ebb9b684"

  url "https://github.com/everettjf/grapecompare/releases/download/v#{version}/GrapeCompare-#{version}.zip"
  name "GrapeCompare"
  desc "Native file and folder comparison"
  homepage "https://xnu.app/grapecompare/"

  depends_on macos: :sonoma

  app "GrapeCompare.app"

  zap trash: [
    "~/Library/Preferences/com.xnu.compare.plist",
    "~/Library/Saved Application State/com.xnu.compare.savedState",
  ]
end
