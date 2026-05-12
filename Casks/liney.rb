cask "liney" do
  version "1.0.67"
  sha256 "954af43633e8076247b754d1f086264eabdbbdc3eafcaf79c0d2d79401bcdf96"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
