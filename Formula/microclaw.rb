class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.56/microclaw-0.0.56-aarch64-apple-darwin.tar.gz"
  sha256 "c1ec926c48625f00672efde13470cbfa3b9e50a036ff9435bd124587fe3ae915"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
