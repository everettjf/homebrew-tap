class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.18/microclaw-0.0.18-aarch64-apple-darwin.tar.gz"
  sha256 "7a939d47d450fce67970023a0cbf77b5f4bfb13caa035dabd324a5e493e069a9"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
