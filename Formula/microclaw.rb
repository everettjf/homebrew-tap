class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.53/microclaw-0.0.53-aarch64-apple-darwin.tar.gz"
  sha256 "8d0735dd7321bf2824b8418e723d3d1eee4b7cbef1e58da55eca9209d4d6d302"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
