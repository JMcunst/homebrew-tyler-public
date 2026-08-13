class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.123.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.123.0/tyler_2.123.0_darwin_arm64.tar.gz"
      sha256 "4c4b55fc3c6cc0ce2afa362beb68ee0820f8d667a0ffcf61cd34e570e204cc20"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.123.0/tyler_2.123.0_darwin_amd64.tar.gz"
      sha256 "efc7e4af54d0298dfb06ecb6eb0b9a558032f72e449382c829a3950e3654de99"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
