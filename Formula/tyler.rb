class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.122.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.122.0/tyler_2.122.0_darwin_arm64.tar.gz"
      sha256 "07f746897727042ec1961e66a188617d1d5cd053d40e193ea01e7a56db67c2be"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.122.0/tyler_2.122.0_darwin_amd64.tar.gz"
      sha256 "970a09cbfdeb8598752192f060511587deaec3305ff81fc96dca575684b8f123"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
