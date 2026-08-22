cask "grapecompare" do
  version "1.8.0"
  sha256 "83dd0820f0c92b606a7a4618151702d06fdceeab2a0bd3d710c85bf9551fba52"

  url "https://github.com/everettjf/grapecompare/releases/download/v#{version}/GrapeCompare-#{version}.zip"
  name "GrapeCompare"
  desc "Native file and folder comparison for macOS"
  homepage "https://xnu.app/grapecompare/"

  depends_on macos: :tahoe
  app "GrapeCompare.app"

  zap trash: [
    "~/Library/Preferences/com.xnu.compare.plist",
    "~/Library/Saved Application State/com.xnu.compare.savedState",
  ]
end
