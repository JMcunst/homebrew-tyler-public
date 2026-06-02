class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.158.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.158.0/tyler_0.158.0_darwin_arm64.tar.gz"
      sha256 "21ab153db8b3f6c617c79e6337be7d207b385d1e44dcae037989c802cb513ac0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.158.0/tyler_0.158.0_darwin_amd64.tar.gz"
      sha256 "d305f709eb9a0add68d595cab2f62a061a7a33b3dcb5e431a4ba516054051aaf"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
