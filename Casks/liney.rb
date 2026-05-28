cask "liney" do
  version "1.0.73"
  sha256 "71fc878ba1359d44a4c8a78beb9666b95c23dd62ac15b9931c503987017dcab7"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
