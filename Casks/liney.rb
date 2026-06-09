cask "liney" do
  version "1.0.76"
  sha256 "13bb35875c3e2bbfe69195b2d9fd89d046bd47ab24b938de479b690f65e4fa58"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
