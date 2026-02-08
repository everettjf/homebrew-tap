class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.22/microclaw-0.0.22-aarch64-apple-darwin.tar.gz"
  sha256 "f126a47821f2c4fe1f317783b6a617b7092f6d6d92dfacb6ae5b735da90379eb"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
