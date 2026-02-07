class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/everettjf/MicroClaw"
  url "https://github.com/everettjf/MicroClaw/releases/download/v0.1.1/microclaw-0.1.1-arm64-apple-darwin.tar.gz"
  sha256 "96db2fae4fb8e23cc9676f0f46ba868b1966a5472a53a9536336cefc881c291b"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
