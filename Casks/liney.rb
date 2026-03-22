cask "liney" do
  version "1.0.10"
  sha256 "73635e3570ac59ed34a979314a0159e8982baa694da2e0d25091256de847590d"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
