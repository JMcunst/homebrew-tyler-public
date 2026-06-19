class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.444.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.444.0/tyler_0.444.0_darwin_arm64.tar.gz"
      sha256 "e6d2c2a04d124c92929d3afe0f98785ceb36c5ab4d19deeca16330959319568f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.444.0/tyler_0.444.0_darwin_amd64.tar.gz"
      sha256 "dee1413dbb8da6e855e641968c9e36ee6168495908ba627dc1e3b5a0035f18c5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
