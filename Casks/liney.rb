cask "liney" do
  version "1.0.6"
  sha256 "d4d078dd3a7a9f85c3488c0259b62ba2d4d6597aad53cb970414486612d4f662"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
