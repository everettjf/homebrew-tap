cask "liney" do
  version "1.0.72"
  sha256 "356a839b4701a657a2f89ed8573047ca940fbb228a3fc03e23ef3dbbdfaafebc"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
