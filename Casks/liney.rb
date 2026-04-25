cask "liney" do
  version "1.0.60"
  sha256 "36e3addc1c93cbf2f39d9e08764e05a2813a2fd4f3c61838a7fd6654af2bff03"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
