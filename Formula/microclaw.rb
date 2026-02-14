class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.61/microclaw-0.0.61-aarch64-apple-darwin.tar.gz"
  sha256 "8d647f1050d26008dd56323089e750e0c1d4d0f5782a8d6b130908750fc0ada6"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
