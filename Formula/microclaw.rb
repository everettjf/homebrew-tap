class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.16/microclaw-0.0.16-aarch64-apple-darwin.tar.gz"
  sha256 "39bfae94de2e683b32eb84c5d05121e2f2352bb0738d27d6704028c1d5e979de"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
