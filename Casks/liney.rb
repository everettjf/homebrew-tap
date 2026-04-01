cask "liney" do
  version "1.0.28"
  sha256 "ab699e45197835226acf82125972c37e240a6d526d9307292ca9227648daae32"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
