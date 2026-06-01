class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.145.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.145.0/tyler_0.145.0_darwin_arm64.tar.gz"
      sha256 "3f453e1b19e23583bf78b844c0b06b113dc247bbeb9628f4c33f66953f21fa47"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.145.0/tyler_0.145.0_darwin_amd64.tar.gz"
      sha256 "013c47246f88b785e7c2e7186c8082ef5f4f5e7530230a20fbaffc03170167c8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
