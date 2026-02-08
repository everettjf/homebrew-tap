class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.9/microclaw-0.0.9-aarch64-apple-darwin.tar.gz"
  sha256 "d640ed8d5db3596413c35fc7af827872a6e6721b2f54df539a21c7e9ce75a3d0"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
