cask "liney" do
  version "1.0.77"
  sha256 "0d78e27ad6908b0997301897d5105f672e0abd9d9289d58d635843c8af7fc983"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
