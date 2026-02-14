class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.58/microclaw-0.0.58-aarch64-apple-darwin.tar.gz"
  sha256 "1e5867639fabff68863db7aaf6f52f3c63edaf255abd329547f0abc6bd7c19b6"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
