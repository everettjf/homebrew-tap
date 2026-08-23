cask "grapecompare" do
  version "1.0.5"
  sha256 "e86d9a58a6cabe0a2fe001000d7c4d6a48b03a8e7a811bfc9ce023ff712814b6"

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
