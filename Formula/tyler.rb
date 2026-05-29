class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.86.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.86.0/tyler_0.86.0_darwin_arm64.tar.gz"
      sha256 "4dba31c40525e6ca369ee2918fba085e07a2e9f623fc6e9465635d3830c711ca"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.86.0/tyler_0.86.0_darwin_amd64.tar.gz"
      sha256 "88b64efe5421e91eb0a3793f957da4bc4a15353f36e1b10995f80e8d9dc1c8c3"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
