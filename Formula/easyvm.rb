class Easyvm < Formula
  desc "Lightweight VM CLI for Apple Virtualization framework"
  homepage "https://github.com/everettjf/EasyVM"
  url "https://github.com/everettjf/EasyVM/releases/download/v1.1.0/easyvm-cli-v1.1.0.tar.gz"
  sha256 "0980ae957ff0b5a944ab22f09d3fb1ff5e85b9a21aba73d75b829d4515197af1"
  license "MIT"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/easyvm"
  end

  test do
    assert_match "EasyVM standalone CLI", shell_output("#{bin}/easyvm --help")
  end

  def caveats
    <<~EOS
      easyvm uses Apple's Virtualization framework.
      Before running VMs, sign the binary with virtualization entitlement:

        codesign --force --sign - \
          --entitlements EasyVM.entitlements \
          #{HOMEBREW_PREFIX}/bin/easyvm

      You can copy entitlement file from EasyVM source repo:
        EasyVM/EasyVM/EasyVM.entitlements
    EOS
  end
end
