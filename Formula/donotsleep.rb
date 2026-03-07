class Donotsleep < Formula
  desc "Cross-platform CLI to keep your system awake"
  homepage "https://github.com/everettjf/donotsleep"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/everettjf/donotsleep/releases/download/v0.1.5/donotsleep-macos-arm64.tar.gz"
      sha256 "d46571b963684f76ea7d558f04a04d8fbeed2cc3406dcb80a434e5eeffb7d681"
    else
      url "https://github.com/everettjf/donotsleep/releases/download/v0.1.5/donotsleep-macos-x86_64.tar.gz"
      sha256 "864df7a0ffa1896c9c7334c8cd9aa1f8ce138bd45d49696519b7852742764041"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/everettjf/donotsleep/releases/download/v0.1.5/donotsleep-linux-arm64.tar.gz"
      sha256 "1f5f11dac2ed174549d2e852d4e45d8842c84525a354c5ee63b5afa4d798f4ef"
    else
      url "https://github.com/everettjf/donotsleep/releases/download/v0.1.5/donotsleep-linux-x86_64.tar.gz"
      sha256 "1e056960ce14ed5b418a86e01c99d848b79aae734f2330fe89ebd3ca3971375e"
    end
  end

  def install
    bin.install "donotsleep"
  end

  test do
    assert_match "donotsleep - prevent system sleep", shell_output("#{bin}/donotsleep --help")
  end
end
