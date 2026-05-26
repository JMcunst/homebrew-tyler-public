class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.58.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.58.0/tyler_0.58.0_darwin_arm64.tar.gz"
      sha256 "789ef296a19151040a9371086ae42c3dc584115155544dba5cc3fcd7c16a1671"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.58.0/tyler_0.58.0_darwin_amd64.tar.gz"
      sha256 "2d7b08adb27e21a916fa2e2b5df2e972d8ca8bfaae19b225f0fb301401cfe49d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
