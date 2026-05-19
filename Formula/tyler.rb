class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.20.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.20.0/tyler_0.20.0_darwin_arm64.tar.gz"
      sha256 "920e141bac9cfeb4f964f2f62771896ed7147bf1738546bcc0194aedb9376848"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.20.0/tyler_0.20.0_darwin_amd64.tar.gz"
      sha256 "cfcd5e3a572f7dfdce2bb8571f4f880957c81c5611815c277ee5cd55f394944b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
