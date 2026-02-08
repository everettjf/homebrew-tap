class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.12/microclaw-0.0.12-aarch64-apple-darwin.tar.gz"
  sha256 "ae9725b10b964f4ac1b713b530fee56e31759c1efb1fe297fd117afd5417e3a7"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
