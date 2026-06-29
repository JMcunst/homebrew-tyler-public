class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.575.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.575.0/tyler_0.575.0_darwin_arm64.tar.gz"
      sha256 "bce1100b8f524fedd5219e2dde36c226d6b1992c80876df892224abdaf84031e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.575.0/tyler_0.575.0_darwin_amd64.tar.gz"
      sha256 "7c6fbd62dcec4118cdd20337753297b4e8598c04a5b5998ccbab4b2011fc5f8c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
