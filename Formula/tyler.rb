class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.99.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.99.0/tyler_0.99.0_darwin_arm64.tar.gz"
      sha256 "be93a42844ac3af2e0c19adc2b06fe8bf4ee4b2304f922eac03cdb9ed72238cc"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.99.0/tyler_0.99.0_darwin_amd64.tar.gz"
      sha256 "522e375a36d61f6661396a877a7221eeb519177ac11a3b8a27d24ae2bc8464a5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
