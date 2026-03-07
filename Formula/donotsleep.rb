class Donotsleep < Formula
  desc "Cross-platform CLI to keep your system awake"
  homepage "https://github.com/everettjf/donotsleep"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/everettjf/donotsleep/releases/download/v0.1.1/donotsleep-macos-arm64.tar.gz"
      sha256 "00a1cbb458a5939347f20c4f76542dde9a69c0d7720ce2ad5f725ec32baeed1d"
    else
      url "https://github.com/everettjf/donotsleep/releases/download/v0.1.1/donotsleep-macos-x86_64.tar.gz"
      sha256 "5160df7f5abecf90bbcb9760ee6b1b974f89fdadecb9ef8317868bc7af144de3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/everettjf/donotsleep/releases/download/v0.1.1/donotsleep-linux-arm64.tar.gz"
      sha256 "147c541f6be1a22d1cf0d9857e6f166bf501daa5cc4c3f2f4bc7679deaddbb28"
    else
      url "https://github.com/everettjf/donotsleep/releases/download/v0.1.1/donotsleep-linux-x86_64.tar.gz"
      sha256 "a03ac021c37e4277f4f7da3a0cb5c2af68cd198d204695741ce691240f6686f8"
    end
  end

  def install
    bin.install "donotsleep"
  end

  test do
    assert_match "donotsleep - prevent system sleep", shell_output("#{bin}/donotsleep --help")
  end
end
