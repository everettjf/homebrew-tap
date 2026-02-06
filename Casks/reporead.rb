cask "reporead" do
  version "1.0.0"
  sha256 "PUT_SHA256_HERE"

  url "https://github.com/everettjf/RepoRead/releases/download/v#{version}/RepoRead.dmg"
  name "RepoRead"
  desc "Read GitHub repositories. No clone. No setup. Just code."
  homepage "https://github.com/everettjf/RepoRead"

  app "RepoRead.app"
end