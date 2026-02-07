class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.7/microclaw-0.0.7-aarch64-apple-darwin.tar.gz"
  sha256 "d63f1a1cdfab06db8b1400eac7ff67ce55146b29a3a318d558dc3d101c8a2800"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
