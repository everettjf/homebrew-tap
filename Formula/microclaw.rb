class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.60/microclaw-0.0.60-aarch64-apple-darwin.tar.gz"
  sha256 "d7af0692623975d3b5fb9821312a4c45e39b1808c20a5f04df34c8e78d4ed74c"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
