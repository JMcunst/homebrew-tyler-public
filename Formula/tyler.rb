class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.107.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.107.0/tyler_2.107.0_darwin_arm64.tar.gz"
      sha256 "30b89343bcbfdc3d9c58b6a579c6b2d470f134aeaa6516f3f7403c3503881583"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.107.0/tyler_2.107.0_darwin_amd64.tar.gz"
      sha256 "9952ec1fade0b45184d1fd9b10720555600d6791e6a0017da980bdd7ad040f82"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
