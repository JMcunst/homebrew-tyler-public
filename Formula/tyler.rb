class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.525.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.525.0/tyler_0.525.0_darwin_arm64.tar.gz"
      sha256 "421f4ec42f42febaaadb90f16e78465099992460fdc8ca83fbf349ef951dc6f2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.525.0/tyler_0.525.0_darwin_amd64.tar.gz"
      sha256 "30f79680b2d5426985034e67c16b989459f90ded9fc19e18b15a80435eefa8a2"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
