class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.154.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.154.0/tyler_0.154.0_darwin_arm64.tar.gz"
      sha256 "e99e557dc8af361a2c295a982433fb9c30848270ea7ab2dc4a07541459a3d5a5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.154.0/tyler_0.154.0_darwin_amd64.tar.gz"
      sha256 "bbf6d7224f85b1ed9ae29fc739e5b3c2910ba6d509674b8a5bab9a4ac947c9cf"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
