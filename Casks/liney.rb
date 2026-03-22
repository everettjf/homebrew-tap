cask "liney" do
  version "1.0.12"
  sha256 "226639d3416d8b916e651f07df302243e1e0c104acc4a16a83e8eb88aa64bc93"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
