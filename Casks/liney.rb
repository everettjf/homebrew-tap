cask "liney" do
  version "1.0.89"
  sha256 "b6806a2c7421f25df93d9cdbfffc2ebd335c5f5f13609b79a5598d7c6f760b34"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://atomsprout.com/liney/"

  app "Liney.app"
end
