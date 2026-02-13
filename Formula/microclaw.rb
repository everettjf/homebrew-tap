class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.46/microclaw-0.0.46-aarch64-apple-darwin.tar.gz"
  sha256 "6487e766542ea87546b5430790ad0026343066ab0af119c9b129e5e59c32eb90"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
