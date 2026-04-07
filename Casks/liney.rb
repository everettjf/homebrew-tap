cask "liney" do
  version "1.0.36"
  sha256 "57339c5cf04427d448deaf52d55157481408ed7cc7588a6493263d39e0ee5d3f"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
