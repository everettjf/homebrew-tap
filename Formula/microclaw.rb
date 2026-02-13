class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.50/microclaw-0.0.50-aarch64-apple-darwin.tar.gz"
  sha256 "58e5256485abcd6fbf198f67f8c0c5d6d20a1297c0a1c056593415170a5fd388"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
