cask "typetide" do
  version "0.1.22,3"
  sha256 "390b4813ff96c5138ab6e795d27e83fbeef935c891cbaba447c488b41a433da0"

  url "https://github.com/everettjf/typetide/releases/download/v#{version.csv.first}/TypeTide-#{version.csv.first}.dmg"
  name "TypeTide"
  desc "System-wide AI translation and inline rewrite"
  homepage "https://atomsprout.com/typetide/"

  # Releases are shared with Windows builds; only releases carrying a macOS DMG count.
  livecheck do
    url :url
    regex(/^TypeTide[._-]v?(\d+(?:\.\d+)+)\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          build = asset["label"].to_s[/build\s+(\d+)/i, 1]
          build ? "#{match[1]},#{build}" : match[1]
        end
      end.flatten
    end
  end

  auto_updates true
  depends_on macos: :tahoe

  app "TypeTide.app"

  zap trash: "~/Library/Preferences/com.xnu.typetide.plist"
end
