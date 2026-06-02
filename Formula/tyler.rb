class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.168.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.168.0/tyler_0.168.0_darwin_arm64.tar.gz"
      sha256 "73f78abe7c6522f76096c698f6409eedc463804863bc96ada147072f5335cbaf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.168.0/tyler_0.168.0_darwin_amd64.tar.gz"
      sha256 "743448228f780f9e33f9f897cab233a7e5b008f5e0f37665aee9d55300ab1de1"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
