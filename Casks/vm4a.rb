cask "vm4a" do
  version "2.6.0"
  sha256 "f9c3f24daa6989ff3aa962c6fca601acc0112a12878c18ffb6b40816c76ab976"

  url "https://github.com/everettjf/vm4a/releases/download/v2.6.0/VM4A.dmg"
  name "VM4A"
  desc "Lightweight virtual machine app for macOS"
  homepage "https://github.com/everettjf/vm4a"

  depends_on macos: :ventura

  app "VM4A.app"
end
