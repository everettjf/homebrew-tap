cask "reporead" do
  version "1.1.10"
  sha256 "cb31b25bc93e983184ba58067fa623305884851f3d1a6343ab974863072c6265"

  url "https://github.com/everettjf/RepoRead/releases/download/v#{version}/RepoRead.dmg"
  name "RepoRead"
  desc "Read GitHub repositories. No clone. No setup. Just code."
  homepage "https://github.com/everettjf/RepoRead"

  app "RepoRead.app"
end