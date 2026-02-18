cask "skillsyoga" do
  version "0.1.4"
  sha256 "1dde76efc9e85aa8eddbd3e311e1667fcff5c20abed270f70121b8339bd501bf"

  url "https://github.com/microclaw/skillsyoga/releases/download/v#{version}/SkillsYoga.dmg"
  name "SkillsYoga"
  desc "A desktop skill manager for AI coding tools."
  homepage "https://github.com/microclaw/skillsyoga"

  app "SkillsYoga.app"
end
