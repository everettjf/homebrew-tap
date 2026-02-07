cask "reporead" do
  version "1.1.8"
  sha256 "b544c6c81fb7aefd433d618ab9b3e803734dc06868ae2f13614a20331e61693c"

  url "https://github.com/everettjf/RepoRead/releases/download/v#{version}/RepoRead.dmg"
  name "RepoRead"
  desc "Read GitHub repositories. No clone. No setup. Just code."
  homepage "https://github.com/everettjf/RepoRead"

  app "RepoRead.app"
end