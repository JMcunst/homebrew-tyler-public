class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.359.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.359.0/tyler_0.359.0_darwin_arm64.tar.gz"
      sha256 "afc8cd07f882eec342cd1329e6f78bfd25faa1f20375d3977cb6bd39947da921"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.359.0/tyler_0.359.0_darwin_amd64.tar.gz"
      sha256 "8cf0d218729c67f8bf6e414a10e55a4cd922242f9f2bd211dc21d0844ad16fca"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
