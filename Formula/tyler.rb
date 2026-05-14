class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.2.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.2.1/tyler_0.2.1_darwin_arm64.tar.gz"
      sha256 "1e98339ddeafbae07e028af825dd16c2bfe953d58c728713a012d119f28aeee4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.2.1/tyler_0.2.1_darwin_amd64.tar.gz"
      sha256 "21531c509bf2df49f16093c7b31ce6211f7bcc297d4f556823c6658d9e5b26fc"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
