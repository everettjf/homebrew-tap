cask "liney" do
  version "1.0.38"
  sha256 "6f5bbf4d24a4a9dcca695ccc86d3fbaccbb14527be91cfdf4b3aabb890e9644b"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
