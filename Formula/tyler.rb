class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.445.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.445.0/tyler_0.445.0_darwin_arm64.tar.gz"
      sha256 "ddc6c7b7102a8aba0bc9a5d41df6cc7ed3615f0e335b59bb276ae0e70a3d47e1"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.445.0/tyler_0.445.0_darwin_amd64.tar.gz"
      sha256 "87bd2958865831600f7276f1c52c44febc443cc41e69c4e048fad1e15b9d0fc5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
