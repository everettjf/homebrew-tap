class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.26/microclaw-0.0.26-aarch64-apple-darwin.tar.gz"
  sha256 "285ac19ba54ec86e5414d7e1bd720489c6248ac8b48320c5557eff4e7bd9646c"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
