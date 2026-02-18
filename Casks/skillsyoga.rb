cask "skillsyoga" do
  version "0.1.8"
  sha256 "a58a70a254a7854e537a1260d2658a2b553a9cb2a213954cf808b71122c6288f"

  url "https://github.com/microclaw/skillsyoga/releases/download/v#{version}/SkillsYoga.dmg"
  name "SkillsYoga"
  desc "A desktop skill manager for AI coding tools."
  homepage "https://github.com/microclaw/skillsyoga"

  app "SkillsYoga.app"
end
