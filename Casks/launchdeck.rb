cask "launchdeck" do
  version "2.0.8"
  sha256 "54b8ac9e12d49b979b32b87540737f2561da2e306b3898a845bf17d6b4bbcace"

  url "https://github.com/everettjf/launchdeck/releases/download/v#{version}/LaunchDeck-#{version}.zip"
  name "LaunchDeck"
  desc "Private local-first application launcher"
  homepage "https://xnu.app/launchdeck/"

  depends_on macos: :sequoia

  app "LaunchDeck.app"

  zap trash: [
    "~/Library/Application Support/LaunchDeck",
    "~/Library/Caches/com.everettjf.launchdeck",
    "~/Library/Preferences/com.everettjf.launchdeck.plist",
    "~/Library/Saved Application State/com.everettjf.launchdeck.savedState",
  ]
end
