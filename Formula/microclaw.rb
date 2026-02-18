class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.77/microclaw-0.0.77-aarch64-apple-darwin.tar.gz"
  sha256 "55fd1ca7f0b4e9223d92b649a761d80e2f18c442898eb8dcbafb4868b6c4f8dd"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
