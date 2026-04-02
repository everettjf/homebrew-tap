cask "liney" do
  version "1.0.30"
  sha256 "efdfd7f0900cb946f55b6531b57433a0e51dbb16fd900d113fdd72f8e58df619"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
