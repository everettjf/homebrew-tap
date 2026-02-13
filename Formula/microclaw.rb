class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.57/microclaw-0.0.57-aarch64-apple-darwin.tar.gz"
  sha256 "bc26751c3367ce8d5dba3bd5bf8cb536d04b0f15a17ba4cfdea4ce032494f9ca"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
