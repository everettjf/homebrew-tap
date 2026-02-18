cask "skillsyoga" do
  version "0.1.10"
  sha256 "f5dc4cd60985345c2c4a57350adee228967a4e583a390df3b8630101539cd639"

  url "https://github.com/microclaw/skillsyoga/releases/download/v#{version}/SkillsYoga.dmg"
  name "SkillsYoga"
  desc "A desktop skill manager for AI coding tools."
  homepage "https://github.com/microclaw/skillsyoga"

  app "SkillsYoga.app"
end
