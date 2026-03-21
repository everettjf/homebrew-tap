cask "liney" do
  version "1.0.5"
  sha256 "b72f312983158849a6679110b110618102e826c18aa7a172683e745b84ba1691"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
