class Vm4a < Formula
  desc "Lightweight VM CLI for Apple Virtualization framework"
  homepage "https://github.com/everettjf/vm4a"
  url "https://github.com/everettjf/vm4a/releases/download/v2.6.1/vm4a-cli-v2.6.1.tar.gz"
  sha256 "480ae51068d01368323c62c7fa515aa836467d45b8b15372af1f56d96b8b1e60"
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
