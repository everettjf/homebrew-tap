cask "liney" do
  version "1.0.52"
  sha256 "42be6d920e1e0e9e71ca613bce8f9e88a8ed58d13b519b5a9933af1b9106abbf"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
