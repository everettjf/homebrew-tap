cask "grapecompare" do
  version "1.0.15"
  sha256 "5c66cd3ffdf6eb3d35e8b2e1e013818ddacd4b5ce6b4c509d4c5a7590575b68b"

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
