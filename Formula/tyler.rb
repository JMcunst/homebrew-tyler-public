class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.357.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.357.0/tyler_0.357.0_darwin_arm64.tar.gz"
      sha256 "19fc4ece183d084c9754d1867b7501490a53b3d3a0ea961a731d0bceb43ce33e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.357.0/tyler_0.357.0_darwin_amd64.tar.gz"
      sha256 "564b0c3430e465b214782ca848f0fb34a5815d352ae78b66a04fed7c3afc756b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
