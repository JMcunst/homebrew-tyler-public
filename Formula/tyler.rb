class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.12"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.12/tyler_0.3.12_darwin_arm64.tar.gz"
      sha256 "422ab0f56381ae61921b5582c03a68f8b88a51cf079a7eb11b3ee4eea5e83c80"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.12/tyler_0.3.12_darwin_amd64.tar.gz"
      sha256 "3e2d7a04aab1a2282be0c1dc51027f1b91b46203ccd98bbcbc207ff0c8cdcc19"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
