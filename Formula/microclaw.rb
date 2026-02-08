class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.19/microclaw-0.0.19-aarch64-apple-darwin.tar.gz"
  sha256 "648cbb1212c3d104478675a25d315e62258ce00477e6eeec5cccfd9cfd841ba6"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
