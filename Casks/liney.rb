cask "liney" do
  version "1.0.56"
  sha256 "bdbaedd5ad322313fb8875d09ece18f278a659b07e7409a4a5e785d5d4f27fde"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
