class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.69/microclaw-0.0.69-aarch64-apple-darwin.tar.gz"
  sha256 "6a2451f573f7f487c1c56daa97aaa78b3259462295428c4f4d220cee93ddd2ff"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
