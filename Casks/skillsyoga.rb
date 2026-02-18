cask "skillsyoga" do
  version "0.1.11"
  sha256 "c45c896494697e0db44bacfca2a134a7317adef1010e0fc0201492d87d7ace10"

  url "https://github.com/microclaw/skillsyoga/releases/download/v#{version}/SkillsYoga.dmg"
  name "SkillsYoga"
  desc "A desktop skill manager for AI coding tools."
  homepage "https://github.com/microclaw/skillsyoga"

  app "SkillsYoga.app"
end
