cask "skillsyoga" do
  version "0.1.25"
  sha256 "bd453614406c6f9973a3e6777be4cbff90bd235cc7096f8d014cb6b92ba39061"

  url "https://github.com/microclaw/skillsyoga/releases/download/v#{version}/SkillsYoga.dmg"
  name "SkillsYoga"
  desc "A desktop skill manager for AI coding tools."
  homepage "https://github.com/microclaw/skillsyoga"

  app "SkillsYoga.app"
end
