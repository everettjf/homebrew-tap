class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.73/microclaw-0.0.73-aarch64-apple-darwin.tar.gz"
  sha256 "fa5b5135e4411f28a9aa61b751689daff54bb7c0921349c7b0f75f5bbc2ec29a"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
