cask "typetide" do
  version "0.1.15"
  sha256 "7179af41e9e84388468cb8b61ed6d763a285cb93c220989a4d2192919dffe4e5"

  url "https://github.com/everettjf/typetide/releases/download/v#{version}/TypeTide-#{version}.dmg"
  name "TypeTide"
  desc "System-wide AI translation and inline rewrite"
  homepage "https://github.com/everettjf/typetide"

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

          match[1]
        end
      end.flatten
    end
  end

  auto_updates true
  depends_on macos: :tahoe

  app "TypeTide.app"

  zap trash: "~/Library/Preferences/com.xnu.typetide.plist"
end
