cask "liney" do
  version "1.0.11"
  sha256 "80eb6aec780ec66263a88450be7ad6ba2c15fc81f346227431e4e2efee654ce5"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
