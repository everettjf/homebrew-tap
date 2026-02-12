class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.39/microclaw-0.0.39-aarch64-apple-darwin.tar.gz"
  sha256 "352d0c0adfd6f35c00653b3d199d46fc0c468df4175159e18af336402d5c798f"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
