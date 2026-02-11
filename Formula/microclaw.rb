class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.36/microclaw-0.0.36-aarch64-apple-darwin.tar.gz"
  sha256 "e4da4a4fe69f421b3c5c5b4c8cc2759908f385db87f12ff450c053d4e3e950af"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
