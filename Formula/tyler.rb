class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.492.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.492.0/tyler_0.492.0_darwin_arm64.tar.gz"
      sha256 "f72328b5af14d293e62f40fcaa9c0565c827ae9b8c5c045256cb8a55c6e2d0e8"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.492.0/tyler_0.492.0_darwin_amd64.tar.gz"
      sha256 "40ead775b47ce1b914c0f2f46f74b7c6d047d27dfb3930af360255cb668134c4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
