class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.11/microclaw-0.0.11-aarch64-apple-darwin.tar.gz"
  sha256 "02bd47092bbdd60911de3686cb734b497d3f0511390e10f75d5e31425b605ab4"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
