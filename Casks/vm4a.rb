cask "vm4a" do
  version "2.6.2"
  sha256 "175cd0473ee497d4cc9e73b52eab0e53f967dd46560ca8ab8f54671fa0534cb2"

  url "https://github.com/everettjf/vm4a/releases/download/v2.6.2/VM4A.dmg"
  name "VM4A"
  desc "Lightweight virtual machine app for macOS"
  homepage "https://github.com/everettjf/vm4a"

  depends_on macos: :ventura

  app "VM4A.app"
end
