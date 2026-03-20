cask "liney" do
  version "1.0.1"
  sha256 "3998103d723c93882e92be05cd7815e7bce3aae3ccb0c1e3e6993534be5ad90d"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
