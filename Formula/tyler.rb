class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.554.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.554.0/tyler_0.554.0_darwin_arm64.tar.gz"
      sha256 "3d326f123885a9e1751bca4f6e176aa26146e0bf253aea3a8215a24db5612765"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.554.0/tyler_0.554.0_darwin_amd64.tar.gz"
      sha256 "5b1e1b21b2d9144eb6806008b11e90ddbce26c6c1fd2d4d47febd0b4c6b558dc"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
