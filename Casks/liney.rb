cask "liney" do
  version "1.0.80"
  sha256 "ad04beccbe0bd53b3da61fc89bb139cac49fdb6076e8b3305244cc92ec9f6122"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
