class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.8/microclaw-0.0.8-aarch64-apple-darwin.tar.gz"
  sha256 "92da3481dabff7dcce303d3c64f4e075615943e93daf09f53b1ab16115f90824"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
