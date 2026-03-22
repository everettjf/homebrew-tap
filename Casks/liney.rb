cask "liney" do
  version "1.0.13"
  sha256 "22f4ff22b284a6ec58cd19c4ac3461aaa107086f5145732128c55c2219f51da1"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
