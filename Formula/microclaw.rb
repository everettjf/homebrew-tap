class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.17/microclaw-0.0.17-aarch64-apple-darwin.tar.gz"
  sha256 "9835d016b40de56560f8f1395cca378c057d85e40108a91128959ff1e76ad7bd"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
