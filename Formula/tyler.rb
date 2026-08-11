class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.116.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.116.0/tyler_2.116.0_darwin_arm64.tar.gz"
      sha256 "6cd52f9db2b4aa0c3c25c4a21231dd3ab09ba7c752dc907bc90f61a77f551e37"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.116.0/tyler_2.116.0_darwin_amd64.tar.gz"
      sha256 "4672df1cfe5d00bc884a51e4d0060af2c8b7b8a1569f1ff553b5e787d7df8002"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
