class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.25/microclaw-0.0.25-aarch64-apple-darwin.tar.gz"
  sha256 "b18b93cfe19ad29fee37021e840e737114c50a3b5d48a4b08ecd12610508cc44"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
