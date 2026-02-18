cask "skillsyoga" do
  version "0.1.3"
  sha256 "073dc563b81c5b3edef86a621f9d5137343a9c90c18ba329e57691ba0a652700"

  url "https://github.com/microclaw/skillsyoga/releases/download/v#{version}/SkillsYoga.dmg"
  name "SkillsYoga"
  desc "A desktop skill manager for AI coding tools."
  homepage "https://github.com/microclaw/skillsyoga"

  app "SkillsYoga.app"
end
