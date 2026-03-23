cask "liney" do
  version "1.0.16"
  sha256 "e381f1672918e9b690aca96f81ff4f773f769411302ab96e289cd154993fe864"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
