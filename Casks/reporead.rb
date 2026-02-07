cask "reporead" do
  version "1.1.6"
  sha256 "087c5f665ceec85d89bd70a189cc7e7cca825f42ef44ed056c50d67464c9e196"

  url "https://github.com/everettjf/RepoRead/releases/download/v#{version}/RepoRead.dmg"
  name "RepoRead"
  desc "Read GitHub repositories. No clone. No setup. Just code."
  homepage "https://github.com/everettjf/RepoRead"

  app "RepoRead.app"
end