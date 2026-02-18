cask "skillsyoga" do
  version "0.1.9"
  sha256 "02e209289ca55c6c17dcf646d0d69cc154da471aabe34b2d34a15814d01fec32"

  url "https://github.com/microclaw/skillsyoga/releases/download/v#{version}/SkillsYoga.dmg"
  name "SkillsYoga"
  desc "A desktop skill manager for AI coding tools."
  homepage "https://github.com/microclaw/skillsyoga"

  app "SkillsYoga.app"
end
