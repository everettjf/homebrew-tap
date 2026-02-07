cask "reporead" do
  version "1.1.9"
  sha256 "0b8090e47e092d66eb1ebc1d415127630e8edfe352cff2c8479e64c3d5d2a714"

  url "https://github.com/everettjf/RepoRead/releases/download/v#{version}/RepoRead.dmg"
  name "RepoRead"
  desc "Read GitHub repositories. No clone. No setup. Just code."
  homepage "https://github.com/everettjf/RepoRead"

  app "RepoRead.app"
end