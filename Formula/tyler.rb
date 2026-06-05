class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.223.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.223.0/tyler_0.223.0_darwin_arm64.tar.gz"
      sha256 "09aa1dafd41c031f30038a670aea89865cac23d99a2f2deac97106c9993ded20"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.223.0/tyler_0.223.0_darwin_amd64.tar.gz"
      sha256 "e31cc023befb942257fd4c981ef00aed497ef16149f773d0742a6f30832e6ded"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
