class Vm4a < Formula
  desc "Lightweight VM CLI for Apple Virtualization framework"
  homepage "https://github.com/everettjf/vm4a"
  url "https://github.com/everettjf/vm4a/releases/download/v2.6.2/vm4a-cli-v2.6.2.tar.gz"
  sha256 "582247e8156cd7b0883804190523d8b7e41baba145abae7a904c6846b5bdc941"
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
