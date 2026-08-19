cask "typetide" do
  version "0.1.10"
  sha256 "0f64229a7d96f00d3eb6f3718ed8591d2d92344516dea713147e356e1e7c21be"

  url "https://github.com/everettjf/typetide/releases/download/v#{version}/TypeTide-#{version}.dmg"
  name "TypeTide"
  desc "System-wide AI translation and inline rewrite"
  homepage "https://github.com/everettjf/typetide"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "TypeTide.app"

  zap trash: "~/Library/Preferences/com.xnu.typetide.plist"
end
