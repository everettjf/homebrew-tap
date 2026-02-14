class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.67/microclaw-0.0.67-aarch64-apple-darwin.tar.gz"
  sha256 "2804068cd7cdafe41182682efb72ec1bd57e0d6de32df99be098ffea8131444d"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
