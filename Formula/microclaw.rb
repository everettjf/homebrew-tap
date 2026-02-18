class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.78/microclaw-0.0.78-aarch64-apple-darwin.tar.gz"
  sha256 "523ed62aa0e2257a6d85b1e5133a5ac612a512bd47cafe9290e8f63f6959a1be"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
