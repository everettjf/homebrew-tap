class Donotsleep < Formula
  desc "Cross-platform CLI to keep your system awake"
  homepage "https://github.com/everettjf/donotsleep"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/everettjf/donotsleep/releases/download/v0.1.3/donotsleep-macos-arm64.tar.gz"
      sha256 "0ebc9434c1c05ca0616422818c293676ba803b16368d62d091551e857194a5c6"
    else
      url "https://github.com/everettjf/donotsleep/releases/download/v0.1.3/donotsleep-macos-x86_64.tar.gz"
      sha256 "9adf192e9ce12627761fadc3979cf16697c126327f5825c51495aa54a48630d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/everettjf/donotsleep/releases/download/v0.1.3/donotsleep-linux-arm64.tar.gz"
      sha256 "df993a6ab6f39380ae04e0fd7f5d9caa742ddd145c734bff55212f5aad5952d8"
    else
      url "https://github.com/everettjf/donotsleep/releases/download/v0.1.3/donotsleep-linux-x86_64.tar.gz"
      sha256 "3875cc50bb3b8c3d42069942584077a1dde9d90cc372edbfe837abd9958ed5e1"
    end
  end

  def install
    bin.install "donotsleep"
  end

  test do
    assert_match "donotsleep - prevent system sleep", shell_output("#{bin}/donotsleep --help")
  end
end
