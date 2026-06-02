class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.165.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.165.0/tyler_0.165.0_darwin_arm64.tar.gz"
      sha256 "8dd7919c820700fa5f8870a8015a620928729739abdddc412d74f81831444422"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.165.0/tyler_0.165.0_darwin_amd64.tar.gz"
      sha256 "3a3b5670833b0b7af6c7bcc67c0d10732251c0bded3add6f8364763a585550c2"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
