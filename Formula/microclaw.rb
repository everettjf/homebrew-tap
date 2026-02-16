class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.71/microclaw-0.0.71-aarch64-apple-darwin.tar.gz"
  sha256 "b167fc5cb883557b0bfa2a60825d16c1e17cb4504b99e8fc66963b838818ba71"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
