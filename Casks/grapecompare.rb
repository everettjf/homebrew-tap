cask "grapecompare" do
  version "1.0.23"
  sha256 "ffa767be8ae1642d019b4ba6551f287797ae4f81084eb02ea2668b0bbd7953cc"

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
