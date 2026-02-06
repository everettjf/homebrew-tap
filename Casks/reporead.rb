cask "reporead" do
  version "1.1.1"
  sha256 "56f7b6f62cc712a890f7dc7640cae7ad9285a23655d59e17df196b43a823449e"

  url "https://github.com/everettjf/RepoRead/releases/download/v#{version}/RepoRead.dmg"
  name "RepoRead"
  desc "Read GitHub repositories. No clone. No setup. Just code."
  homepage "https://github.com/everettjf/RepoRead"

  app "RepoRead.app"
end