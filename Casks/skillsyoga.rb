cask "skillsyoga" do
  version "0.1.6"
  sha256 "31780ccb268664fe293c361b6a9b729521d97c85dc17546690130770d4821ad1"

  url "https://github.com/microclaw/skillsyoga/releases/download/v#{version}/SkillsYoga.dmg"
  name "SkillsYoga"
  desc "A desktop skill manager for AI coding tools."
  homepage "https://github.com/microclaw/skillsyoga"

  app "SkillsYoga.app"
end
