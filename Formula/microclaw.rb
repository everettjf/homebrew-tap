class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.20/microclaw-0.0.20-aarch64-apple-darwin.tar.gz"
  sha256 "26025ba8ecc041a07cba8aea680f9e3c45547840649edf226782414830d168de"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
