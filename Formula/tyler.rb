class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.211.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.211.0/tyler_0.211.0_darwin_arm64.tar.gz"
      sha256 "c31514d5dc1684733a24e3d8f2679233b286884c2652f6aeb634e6d9b8490d0d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.211.0/tyler_0.211.0_darwin_amd64.tar.gz"
      sha256 "8053ef0b74ce110e439ad55b6e477b5e056b3f59948316b36d9ef06c554126c0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
