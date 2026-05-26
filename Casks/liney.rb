cask "liney" do
  version "1.0.71"
  sha256 "a9dc75b9d824a12dd69f7a0d4c055e563ddd6302ebe10b9f7e1a558dc227057d"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
