class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.523.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.523.0/tyler_0.523.0_darwin_arm64.tar.gz"
      sha256 "b71544c7296294b3d8188124f1c7a9211cf288f5aab9867fe1d8f645676c6864"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.523.0/tyler_0.523.0_darwin_amd64.tar.gz"
      sha256 "0e64c39e8827141c01c56ae6c8a21255ec4e2b73e8071cae4a1232c28c5192c4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
