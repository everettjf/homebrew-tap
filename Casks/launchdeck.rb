cask "launchdeck" do
  version "2.0.12"
  sha256 "93c4a11679287990bc581ec3a6ca38aea44eea65806d02b8dfcdeb69a0831027"

  url "https://github.com/everettjf/launchdeck/releases/download/v#{version}/LaunchDeck-#{version}.zip"
  name "LaunchDeck"
  desc "Private local-first application launcher"
  homepage "https://xnu.app/launchdeck/"

  depends_on macos: :tahoe

  app "LaunchDeck.app"

  zap trash: [
    "~/Library/Application Support/LaunchDeck",
    "~/Library/Caches/com.everettjf.launchdeck",
    "~/Library/Preferences/com.everettjf.launchdeck.plist",
    "~/Library/Saved Application State/com.everettjf.launchdeck.savedState",
  ]
end
