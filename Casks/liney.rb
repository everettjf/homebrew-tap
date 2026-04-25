cask "liney" do
  version "1.0.61"
  sha256 "c904291e65f2784cd3588211aa769687d606465cca0a069ef46bbd98af052515"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
