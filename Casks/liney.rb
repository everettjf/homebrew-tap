cask "liney" do
  version "1.0.22"
  sha256 "e946e01e854d0f1bda9a29568a1a3078d14a70e7f41bbc24e7f1c77c36ad5234"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
