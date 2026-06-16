class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.384.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.384.0/tyler_0.384.0_darwin_arm64.tar.gz"
      sha256 "a3c3c5ce06bc82275f3482904751fcb567d9d0d47fe94bc000a9ef05da7b674c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.384.0/tyler_0.384.0_darwin_amd64.tar.gz"
      sha256 "ef5b4b1cc54f31e421c6a7091e0465fe9875e3fa5c77d315c0a680dfa87492da"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
