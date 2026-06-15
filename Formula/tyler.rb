class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.354.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.354.0/tyler_0.354.0_darwin_arm64.tar.gz"
      sha256 "848a175434b21b17acd104c9c1a5605c6d05fa7f69a346350745ad0b5f4b4160"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.354.0/tyler_0.354.0_darwin_amd64.tar.gz"
      sha256 "ec2ca98bc3d221ad9c3756a97f874648c11c9f17ee31171dd9f8c678f8554058"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
