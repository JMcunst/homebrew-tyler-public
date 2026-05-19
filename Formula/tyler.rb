class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.26.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.26.0/tyler_0.26.0_darwin_arm64.tar.gz"
      sha256 "e55ab7a9f7c3213f903ece931a0826e5c9be68b43f884ec05d9a4af0d5e466b5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.26.0/tyler_0.26.0_darwin_amd64.tar.gz"
      sha256 "6ac9e966b9cebfff79ee6ca4396b11207c9a519fdb9c2b1511ae9549fb0056e3"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
