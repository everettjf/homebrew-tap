cask "liney" do
  version "1.0.7"
  sha256 "8e3f201e856c6563910ceade34014b2da2ff8a092db7501f4ce62eefaf154140"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
