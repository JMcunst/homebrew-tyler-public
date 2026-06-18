class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.433.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.433.0/tyler_0.433.0_darwin_arm64.tar.gz"
      sha256 "c5a481205b6dd3fe1128722cd0eb0705c4eb46d9d9763c53c5889b2c45f3a5a7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.433.0/tyler_0.433.0_darwin_amd64.tar.gz"
      sha256 "39770fca47b1d698089558bc2409cc90a1b0b9db9ae117457e3ab9733913fbae"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
