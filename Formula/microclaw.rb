class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.4/microclaw-0.0.4-arm64-apple-darwin.tar.gz"
  sha256 "1c0eece5ccac54ab83efaf1f1625ee6a010944d22425b7bc89768a03c0fe15df"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
