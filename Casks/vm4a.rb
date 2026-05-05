cask "vm4a" do
  version "2.0.1"
  sha256 "b7327d708b4011a45dd6d7dedfe403299e93c6ce75f76b3c0067ef592fd88071"

  url "https://github.com/everettjf/vm4a/releases/download/v2.0.1/VM4A.dmg"
  name "VM4A"
  desc "Lightweight virtual machine app for macOS"
  homepage "https://github.com/everettjf/vm4a"

  depends_on macos: ">= :ventura"

  app "VM4A.app"
end
