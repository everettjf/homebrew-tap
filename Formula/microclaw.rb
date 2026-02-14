class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.59/microclaw-0.0.59-aarch64-apple-darwin.tar.gz"
  sha256 "23f124b6ca9020231d67ac3248d0dccd28e8a403be3130ae75211e4c7362d214"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
