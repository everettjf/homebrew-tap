class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.34/microclaw-0.0.34-aarch64-apple-darwin.tar.gz"
  sha256 "591f02825271f44724c8033128fbafb3487be2b80cc5eaad262c63fbcb8d617e"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
