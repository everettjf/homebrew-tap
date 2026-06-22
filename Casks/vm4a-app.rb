cask "vm4a-app" do
  version "2.7.0"
  sha256 "c69c1944faf146659426120dda6779be753d2743e0b74706cfc86ba2258be6cd"

  url "https://github.com/everettjf/vm4a/releases/download/v2.7.0/VM4A.dmg"
  name "VM4A"
  desc "Lightweight virtual machine app for macOS"
  homepage "https://github.com/everettjf/vm4a"

  depends_on macos: :ventura

  app "VM4A.app"
end
