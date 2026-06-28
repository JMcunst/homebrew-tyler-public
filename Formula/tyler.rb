class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.570.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.570.0/tyler_0.570.0_darwin_arm64.tar.gz"
      sha256 "ca5e51c7f13fff253f7486cd9e3a51d2834026e2c0db26facbb8d5ffbe9efccf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.570.0/tyler_0.570.0_darwin_amd64.tar.gz"
      sha256 "1c123388b3b6d692a5d8464d5f47cf016189e8c1f3077034974f85bb576d7b14"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
