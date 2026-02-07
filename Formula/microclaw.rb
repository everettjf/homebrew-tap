class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.5/microclaw-0.0.5-arm64-apple-darwin.tar.gz"
  sha256 "93eae01d7f8e73f01cfd7d3bc3c3f3a79681f2a2a5a5dfef70681f8694bd66b7"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
