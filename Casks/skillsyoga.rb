cask "skillsyoga" do
  version "0.1.19"
  sha256 "ae702a218bad060eb6c5d3053219d519f38ae34b49f230f9c6477a756504a4a2"

  url "https://github.com/microclaw/skillsyoga/releases/download/v#{version}/SkillsYoga.dmg"
  name "SkillsYoga"
  desc "A desktop skill manager for AI coding tools."
  homepage "https://github.com/microclaw/skillsyoga"

  app "SkillsYoga.app"
end
