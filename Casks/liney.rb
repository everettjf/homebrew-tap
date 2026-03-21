cask "liney" do
  version "1.0.1"
  sha256 "51c7aa3bf674141139d97ef284c8218c86ab4ccf2a3a985be73e17fc0753f662"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
