cask "reporead" do
  version "1.1.2"
  sha256 "73e4c97e1f98aebff087e3fdf220f45c1e8c425189d5e8c6e4307ff6085feeae"

  url "https://github.com/everettjf/RepoRead/releases/download/v#{version}/RepoRead.dmg"
  name "RepoRead"
  desc "Read GitHub repositories. No clone. No setup. Just code."
  homepage "https://github.com/everettjf/RepoRead"

  app "RepoRead.app"
end