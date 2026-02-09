class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.31/microclaw-0.0.31-aarch64-apple-darwin.tar.gz"
  sha256 "4689f61a98eb8fb5bcb55d6a02b3ee1881e118f8a792c3e2defa1768c2643aea"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
