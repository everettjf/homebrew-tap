class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.76/microclaw-0.0.76-aarch64-apple-darwin.tar.gz"
  sha256 "b44648f6ed42ff636f519b6ff7f62a3db27ea17ede33bdc3621b78f659e19f1c"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
