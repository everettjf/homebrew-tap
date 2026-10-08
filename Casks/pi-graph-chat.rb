# typed: strict
# frozen_string_literal: true

cask "pi-graph-chat" do
  version "0.3.0"
  sha256 "0da9357d11686589fb602487859fdcae136dfd51b1453d10be5720c0e8b2c196"

  url "https://github.com/everettjf/pi-graph-chat/releases/download/v#{version}/Pi-Graph-Chat-#{version}.zip"
  name "Pi Graph Chat"
  desc "Local-first learning workspace that turns AI chats into knowledge graphs"
  homepage "https://github.com/everettjf/pi-graph-chat"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Pi Graph Chat.app"

  uninstall quit: "com.everettjf.pi-graph-chat"

  # Pi's own sessions and credentials under ~/.pi belong to Pi and are left alone.
  zap trash: [
    "~/Library/Application Support/Pi Graph Chat",
    "~/Library/Logs/Pi Graph Chat",
  ]
end
