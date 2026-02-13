class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.55/microclaw-0.0.55-aarch64-apple-darwin.tar.gz"
  sha256 "446aa904dfee39cae03d0455011f226aba2b25bf6c9fa480eef68c8aac406457"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
