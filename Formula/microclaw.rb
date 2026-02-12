class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.40/microclaw-0.0.40-aarch64-apple-darwin.tar.gz"
  sha256 "f4b3705b9e53d4f24a9e791c0084a0b2a201f2c2d4e32a899e18e155f821c89a"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
