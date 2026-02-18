cask "skillsyoga" do
  version "0.1.23"
  sha256 "1e9cd64e8053ae1764952038571f330a3165495ede8897213e76cc07b58282fb"

  url "https://github.com/microclaw/skillsyoga/releases/download/v#{version}/SkillsYoga.dmg"
  name "SkillsYoga"
  desc "A desktop skill manager for AI coding tools."
  homepage "https://github.com/microclaw/skillsyoga"

  app "SkillsYoga.app"
end
