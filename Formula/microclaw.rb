class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.15/microclaw-0.0.15-aarch64-apple-darwin.tar.gz"
  sha256 "8294cfb19d1eeb9d53bc25e1944342119ff7f65540ca4cca5211a476374f7700"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
