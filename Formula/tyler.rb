class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.127.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.127.0/tyler_0.127.0_darwin_arm64.tar.gz"
      sha256 "0c6873ac8abdb34c6407e263803433cdcb92996b49ca9bda06a0d5ab0611af63"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.127.0/tyler_0.127.0_darwin_amd64.tar.gz"
      sha256 "0f9d9a76a56af392ab80874fa0f063facf058c923d126c25fa46a7de54d29939"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
