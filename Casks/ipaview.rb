cask "ipaview" do
  version "1.3"
  sha256 "f2bbd1da2a8a593518341c7b8d1ae025531ad78e5e074119609944b90e6235b3"

  url "https://github.com/everettjf/ipaview/releases/download/v#{version}/IPAView-#{version}.zip"
  name "IPAView"
  desc "Local audit workbench for iOS IPA archives"
  homepage "https://xnu.app/ipaview/"

  depends_on macos: :sonoma
  app "IPAView.app"

  zap trash: [
    "~/Library/Preferences/com.everettjf.ipaview.plist",
    "~/Library/Saved Application State/com.everettjf.ipaview.savedState",
  ]
end
