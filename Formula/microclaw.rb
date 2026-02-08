class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.24/microclaw-0.0.24-aarch64-apple-darwin.tar.gz"
  sha256 "8393da05b1226970f6d6611013603842f589c448df9e3988e439f447229b6f59"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
