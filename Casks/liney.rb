cask "liney" do
  version "1.0.50"
  sha256 "4dcbf8106b7eda2860b08a06c7548c79df0dae71bea95dc0f58a3d3eaf7883c0"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
