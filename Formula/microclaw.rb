class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.10/microclaw-0.0.10-aarch64-apple-darwin.tar.gz"
  sha256 "b9a7a9cddafc149070296c771915aafa952689e36caafa2b3778d53f36fea307"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
