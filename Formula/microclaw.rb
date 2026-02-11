class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.35/microclaw-0.0.35-aarch64-apple-darwin.tar.gz"
  sha256 "a0396e37249530b0b55f147a57c8a61ac055daff13c699567c82f13791c1495f"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
