class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.183.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.183.0/tyler_0.183.0_darwin_arm64.tar.gz"
      sha256 "3c734b5fb0c1d9d280bcb0b7ccbc56cde2be859dd8ae9133c1695be0c4df054b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.183.0/tyler_0.183.0_darwin_amd64.tar.gz"
      sha256 "0b7403d4b1f17baa3f875273454fc95a45ca00c65d8c26df3f6c6fd78db8f79f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
