class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.21/microclaw-0.0.21-aarch64-apple-darwin.tar.gz"
  sha256 "f4cf7dac72f5a5f723aff90e6b490600fb3ad9b21f300c9a436e53546e021ea5"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
