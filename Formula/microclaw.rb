class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.13/microclaw-0.0.13-aarch64-apple-darwin.tar.gz"
  sha256 "489921348ebf96bf667ff9de371b4c7ec3f6a3352c58025ea49eb2778c31ea15"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
