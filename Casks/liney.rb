cask "liney" do
  version "1.0.75"
  sha256 "5c6fb880c206381ef485d2383c841cd1ce65d2cfc8fb7887e7552e2b778575b2"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
