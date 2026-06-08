cask "vm4a" do
  version "2.6.0"
  sha256 "07b58f5af8055a0b6c9e78bc74195ceeadb6c99fe8a58688b0554aae6e5fd7a0"

  url "https://github.com/everettjf/vm4a/releases/download/v2.6.0/VM4A.dmg"
  name "VM4A"
  desc "Lightweight virtual machine app for macOS"
  homepage "https://github.com/everettjf/vm4a"

  depends_on macos: ">= :ventura"

  app "VM4A.app"
end
