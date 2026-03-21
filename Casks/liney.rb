cask "liney" do
  version "1.0.8"
  sha256 "79940f71f88c3c042de91458efd965e293444e615960bab98d04b014b51a6990"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
