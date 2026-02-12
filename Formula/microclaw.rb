class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.38/microclaw-0.0.38-aarch64-apple-darwin.tar.gz"
  sha256 "b639525d200eee696cebe9de010b3950cfff589ebd3e9c74fe471a4e0f8657a7"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
