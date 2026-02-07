cask "reporead" do
  version "1.1.4"
  sha256 "6a075daa3fe10c2da44958dcb60241e5835f5b779dd591a41bc17436b2545bef"

  url "https://github.com/everettjf/RepoRead/releases/download/v#{version}/RepoRead.dmg"
  name "RepoRead"
  desc "Read GitHub repositories. No clone. No setup. Just code."
  homepage "https://github.com/everettjf/RepoRead"

  app "RepoRead.app"
end