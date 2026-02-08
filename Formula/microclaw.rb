class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.14/microclaw-0.0.14-aarch64-apple-darwin.tar.gz"
  sha256 "3ae0a6cdbb64994170f4c49be909484ec286ba5bae4c58f8a10261e80a71bd5c"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
