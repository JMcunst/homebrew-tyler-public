class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.86.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.86.0/tyler_2.86.0_darwin_arm64.tar.gz"
      sha256 "7bbff1d14b6212a0bac50797e6b2f8d3fe27f0bf983ee0d9a055ab13ea623dfa"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.86.0/tyler_2.86.0_darwin_amd64.tar.gz"
      sha256 "d433f916f21ae9324b4b8959e75863e6806785da744983bef76e46a82676c99d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
