class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.52/microclaw-0.0.52-aarch64-apple-darwin.tar.gz"
  sha256 "ebaac78d4021175bdbbc9a788427eed12054f6cc026132f83913cdaf5b25b565"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
