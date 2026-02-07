cask "reporead" do
  version "1.1.3"
  sha256 "e40e7663e6ead90e5cbbedc4168acd9b68ab4c88921b78105e900953cb139367"

  url "https://github.com/everettjf/RepoRead/releases/download/v#{version}/RepoRead.dmg"
  name "RepoRead"
  desc "Read GitHub repositories. No clone. No setup. Just code."
  homepage "https://github.com/everettjf/RepoRead"

  app "RepoRead.app"
end