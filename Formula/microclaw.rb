class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.32/microclaw-0.0.32-aarch64-apple-darwin.tar.gz"
  sha256 "5afea7e9694d2e965ae098cf33b7472f70f7d2d786421e46c37118dfcdec7691"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
