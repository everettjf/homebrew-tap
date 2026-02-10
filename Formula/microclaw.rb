class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.33/microclaw-0.0.33-aarch64-apple-darwin.tar.gz"
  sha256 "f3487dbdc93c023b753b3f81a5b77866c971b49c9d16981041b4e2073e602ee7"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
