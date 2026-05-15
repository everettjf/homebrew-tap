cask "liney" do
  version "1.0.68"
  sha256 "f153c82647561d55d9a466a40ad3091e1900cd59770c3a37506b86418d4cccca"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
