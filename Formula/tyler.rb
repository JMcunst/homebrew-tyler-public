class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.253.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.253.0/tyler_0.253.0_darwin_arm64.tar.gz"
      sha256 "2a8ebdb2944e25f22543f08b6c4268a3de06aa318b7fb773e060c3ddcfdf0f28"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.253.0/tyler_0.253.0_darwin_amd64.tar.gz"
      sha256 "a387137c81d9939ff0ad350c1b5657b87430b1b2830cc666093219bf3a41cebd"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
