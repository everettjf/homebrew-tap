class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.72/microclaw-0.0.72-aarch64-apple-darwin.tar.gz"
  sha256 "13da79525affd447c1abda330111fc11fce4de4895f4ebbb262fc65cd4b0c84b"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
