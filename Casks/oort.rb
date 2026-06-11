# Homebrew cask for oort's GUI, published from the GitHub release
# (a Developer ID-signed, notarized + stapled DMG — see docs/packaging.md).
#
# NOTE: today's .app is a front-end that drives a *local* oort install — it
# bakes OORT_HOME to the repo it was built from, so after `brew install` you
# still need that repo cloned and a golden image built (`oort build-image`).
# A fully self-contained app is on the roadmap (docs/packaging.md).
cask "oort" do
  version "0.3.0"
  sha256 "00efffb286ba8301ca97b907331ea3266c5848503865a6a0a4afb7ef21ce13bb"

  url "https://github.com/everettjf/oort/releases/download/v#{version}/oort-#{version}.dmg"
  name "oort"
  desc "Lightweight, OrbStack-style Docker & Linux runtime"
  homepage "https://github.com/everettjf/oort"

  depends_on macos: :ventura

  app "oort.app"
end
