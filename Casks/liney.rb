cask "liney" do
  version "1.0.37"
  sha256 "614e62bddc67419733fbad6ec972064ee58b722b0bcb308e7795e87421f2bd44"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
