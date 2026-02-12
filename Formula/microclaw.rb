class Microclaw < Formula
  desc "Agentic AI assistant for Telegram — web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.45/microclaw-0.0.45-aarch64-apple-darwin.tar.gz"
  sha256 "05881d9db4bb61e5b5dd83378939a8a23397d96b06c11666748b357442f64455"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
