cask "liney" do
  version "1.0.25"
  sha256 "4b16ff41c02ab5320b416d5b2ec2009874147da915a19a9fbcabede798659847"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
