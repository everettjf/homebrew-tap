cask "reporead" do
  version "1.1.7"
  sha256 "f708af5db9e3de238ff53440296f0bb0576d4485fc25b2deca8f9749bb86efeb"

  url "https://github.com/everettjf/RepoRead/releases/download/v#{version}/RepoRead.dmg"
  name "RepoRead"
  desc "Read GitHub repositories. No clone. No setup. Just code."
  homepage "https://github.com/everettjf/RepoRead"

  app "RepoRead.app"
end