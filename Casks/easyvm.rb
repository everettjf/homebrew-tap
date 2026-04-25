cask "easyvm" do
  version "1.1.0"
  sha256 "18ee5df56c3aff59debd40d97de4221aec81e39f5d7792f5cf5096fd610cd6cc"

  url "https://github.com/everettjf/EasyVM/releases/download/v1.1.0/EasyVM.dmg"
  name "EasyVM"
  desc "Lightweight virtual machine app for macOS"
  homepage "https://github.com/everettjf/EasyVM"

  depends_on macos: ">= :ventura"

  app "EasyVM.app"
end
