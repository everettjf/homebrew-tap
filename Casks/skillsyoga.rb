cask "skillsyoga" do
  version "0.1.26"
  sha256 "697ff1e090018d364f06a228675b17b2fc438d41947403aa835ff6423fb9a2b5"

  url "https://github.com/microclaw/skillsyoga/releases/download/v#{version}/SkillsYoga.dmg"
  name "SkillsYoga"
  desc "A desktop skill manager for AI coding tools."
  homepage "https://github.com/microclaw/skillsyoga"

  app "SkillsYoga.app"
end
