cask "launchdeck" do
  version "1.5.1"
  sha256 "77137f518434086ef9e7f73c63ca225feaf2c2e74c2b4ee3729ea8139a1ccc33"

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
