cask "launchdeck" do
  version "2.0.9"
  sha256 "5d7ce82c105441ffda0cc30b61fa686d5f84267e9f20f403bf2e3275e75a453f"

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
