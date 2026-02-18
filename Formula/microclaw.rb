class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.75/microclaw-0.0.75-aarch64-apple-darwin.tar.gz"
  sha256 "559743366368b93bcc955d45c6b29e847a7aa7d9ac15f7e49e8b7e0094bec28c"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
