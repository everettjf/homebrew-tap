class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.68/microclaw-0.0.68-aarch64-apple-darwin.tar.gz"
  sha256 "b99d5354d46eb4b7d52bc3dfa7a27b9e8653a82480095994c2a85d80368f0474"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
