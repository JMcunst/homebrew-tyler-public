class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.393.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.393.0/tyler_0.393.0_darwin_arm64.tar.gz"
      sha256 "e2272807a26ce254b08f3db112129d3dd172d9cccb3d42ee862889e83bf07d21"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.393.0/tyler_0.393.0_darwin_amd64.tar.gz"
      sha256 "41da83f4a7d1f53a16286df25a5cf6a05d2bba4b8c00c7208aba31da2075f818"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
