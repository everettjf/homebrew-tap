cask "liney" do
  version "1.0.3"
  sha256 "ab32174e09fc3d67fa8cfeac78c8f845a7855c08aef07e51dc8af32c2e298040"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
