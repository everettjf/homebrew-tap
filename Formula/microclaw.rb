class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.6/microclaw-0.0.6-aarch64-apple-darwin.tar.gz"
  sha256 "536c07d0132ccecb3a215d96b97fe06bfdd5cc1a198fc5fe837e78b5ceee25e1"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
