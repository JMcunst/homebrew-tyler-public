class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.402.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.402.0/tyler_0.402.0_darwin_arm64.tar.gz"
      sha256 "d7378021812c808e6a0e0380ecc085d655a7955704892ce430618c076870db0c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.402.0/tyler_0.402.0_darwin_amd64.tar.gz"
      sha256 "71db23b5cf2057f315696c774fa9c28bee2af8534b9b79337df6ef5f01375b05"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
