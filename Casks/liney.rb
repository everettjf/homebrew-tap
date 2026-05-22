cask "liney" do
  version "1.0.69"
  sha256 "0839e67a1f89fa8c2b1847e3b7a76e0893eac0912d711f0c92ff9f55e50dd44c"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
