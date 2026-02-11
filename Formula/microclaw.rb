class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.37/microclaw-0.0.37-aarch64-apple-darwin.tar.gz"
  sha256 "4945456b544edbd5f6f25798b0be1b1bc6a8f14f665462227b92010e17cd613c"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
