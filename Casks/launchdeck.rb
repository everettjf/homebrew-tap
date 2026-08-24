cask "launchdeck" do
  version "2.0.2"
  sha256 "caacd543c50c674b9b083f67c2c6520b866228c26ae6bf206a959049065e5558"

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
