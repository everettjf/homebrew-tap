cask "reporead" do
  version "1.1.8"
  sha256 "30a18257223fb682ffc457b1aa7e8af268a91935471c75a4d4ae33bca751dbf5"

  url "https://github.com/everettjf/RepoRead/releases/download/v#{version}/RepoRead.dmg"
  name "RepoRead"
  desc "Read GitHub repositories. No clone. No setup. Just code."
  homepage "https://github.com/everettjf/RepoRead"

  app "RepoRead.app"
end