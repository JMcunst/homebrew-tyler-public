class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.135.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.135.0/tyler_0.135.0_darwin_arm64.tar.gz"
      sha256 "3212c9b7e9d1e9a1af6ff7f57129714320f1de257562fb91a9d548db5aedf97a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.135.0/tyler_0.135.0_darwin_amd64.tar.gz"
      sha256 "67d4454a0858e43f904aafe29ad993c02e204d43467070c6ad0d4f99de68fc7c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
