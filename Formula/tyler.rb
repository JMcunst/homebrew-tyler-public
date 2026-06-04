class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.203.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.203.0/tyler_0.203.0_darwin_arm64.tar.gz"
      sha256 "5c053dbdaf69b44cc65cd9cbe426e0738b87c281829eff8ff1b36ea0c1867e87"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.203.0/tyler_0.203.0_darwin_amd64.tar.gz"
      sha256 "b05e3d9da6a23c533a74b7bb61004f4d03fdf81c728a6ade09fe8f37c5c84461"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
