cask "liney" do
  version "1.0.39"
  sha256 "472358996599aa8f9c674eb731ebc5b3b73c0aecc202bc7be624c271f87bcfd4"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
