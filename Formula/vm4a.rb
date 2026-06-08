class Vm4a < Formula
  desc "Lightweight VM CLI for Apple Virtualization framework"
  homepage "https://github.com/everettjf/vm4a"
  url "https://github.com/everettjf/vm4a/releases/download/v2.6.0/vm4a-cli-v2.6.0.tar.gz"
  sha256 "f976afa2e9cd466da6ebfa97f2f2d48e4232e9e89e8a97e861e4bb8a78cf1133"
  license "MIT"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/vm4a"
  end

  test do
    assert_match "Virtual Machines for Agents", shell_output("#{bin}/vm4a --help")
  end

  def caveats
    <<~EOS
      vm4a uses Apple's Virtualization framework.
      Before running VMs, sign the binary with virtualization entitlement:

        codesign --force --sign - \
          --entitlements VM4A.entitlements \
          #{HOMEBREW_PREFIX}/bin/vm4a

      You can copy entitlement file from VM4A source repo:
        VM4A/VM4A/VM4A.entitlements
    EOS
  end
end
