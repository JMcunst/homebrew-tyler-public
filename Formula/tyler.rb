class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.146.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.146.0/tyler_0.146.0_darwin_arm64.tar.gz"
      sha256 "bae4dfed2adfd54bcf33ede6581832fdbffadb8afd10ec87bfd22119e8cbd7e4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.146.0/tyler_0.146.0_darwin_amd64.tar.gz"
      sha256 "a8b86844138fa5a8c0f39fa5ebad580ecb73fb04adfb56d4bbc62c2a66b6f5f2"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
