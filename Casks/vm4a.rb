cask "vm4a" do
  version "2.0.2"
  sha256 "ed226431011cdb0168532abab35ab0fa27b96379f17797d82723b89228e0b9ba"

  url "https://github.com/everettjf/vm4a/releases/download/v2.0.2/VM4A.dmg"
  name "VM4A"
  desc "Lightweight virtual machine app for macOS"
  homepage "https://github.com/everettjf/vm4a"

  depends_on macos: ">= :ventura"

  app "VM4A.app"
end
