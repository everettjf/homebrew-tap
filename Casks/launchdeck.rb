cask "launchdeck" do
  version "2.0.14"
  sha256 "52240905f4614d373d4909be12e19beb8bcd0708a5dd03ab3e826ec9463e57d9"

  url "https://github.com/everettjf/launchdeck/releases/download/v#{version}/LaunchDeck-#{version}.zip"
  name "LaunchDeck"
  desc "Private local-first application launcher"
  homepage "https://atomsprout.com/launchdeck/"

  depends_on macos: :tahoe

  app "LaunchDeck.app"

  zap trash: [
    "~/Library/Application Support/LaunchDeck",
    "~/Library/Caches/com.everettjf.launchdeck",
    "~/Library/Preferences/com.everettjf.launchdeck.plist",
    "~/Library/Saved Application State/com.everettjf.launchdeck.savedState",
  ]
end
