class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.64.3"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.64.3/tyler_0.64.3_darwin_arm64.tar.gz"
      sha256 "3890a24cab1a301b002cfcb2d4c559157925d0d800517089ee3e4d75b5f35e75"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.64.3/tyler_0.64.3_darwin_amd64.tar.gz"
      sha256 "22526cc7b50769d474fd58137e91785f1c464e68006fa67652cec96aaff6997f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
