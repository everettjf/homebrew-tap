class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.63/microclaw-0.0.63-aarch64-apple-darwin.tar.gz"
  sha256 "137e0e0213bf100ff835bec89d4a171918462ed22e0eb4a15e6a8596e42d4cd2"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
