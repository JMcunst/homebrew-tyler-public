class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.463.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.463.0/tyler_0.463.0_darwin_arm64.tar.gz"
      sha256 "0f7d97293e2142a647d182f433fdbb592140072987095e76328d4c0b8013343f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.463.0/tyler_0.463.0_darwin_amd64.tar.gz"
      sha256 "816709566062185e7e1a23dbd293be4079936baa18b8759ea63ad2e7d1f35815"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
