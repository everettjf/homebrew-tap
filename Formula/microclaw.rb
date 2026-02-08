class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.23/microclaw-0.0.23-aarch64-apple-darwin.tar.gz"
  sha256 "6382cc60bf7767eba3fd0e6b72396014d8eb1f4ade43ebbcf3dbfacd9b612728"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
