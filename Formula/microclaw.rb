class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.51/microclaw-0.0.51-aarch64-apple-darwin.tar.gz"
  sha256 "3028dfc89c90f18394eade07cb40be53abda06d2f42b492af9ca852a94fef4a0"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
