class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.41/microclaw-0.0.41-aarch64-apple-darwin.tar.gz"
  sha256 "ffca7e8f09942ec7513841679ad244324da551786e2b10c453cb06abc7a30c14"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
