class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.539.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.539.0/tyler_0.539.0_darwin_arm64.tar.gz"
      sha256 "1483ed71558a367efd9b3d079cfa5168df510e69058a830e27baf166fbd9a323"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.539.0/tyler_0.539.0_darwin_amd64.tar.gz"
      sha256 "fb60a281654acec4350e0eb643d71b68dd3b6d21070c5db40bc959580a5b077b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
