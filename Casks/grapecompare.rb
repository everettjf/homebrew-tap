cask "grapecompare" do
  version "1.0.13"
  sha256 "2debf4add3879c12495a7f36c8c8f67eea551c9f6a720669f3eeafdc4faccefe"

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
