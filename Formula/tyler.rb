class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "1.3.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v1.3.0/tyler_1.3.0_darwin_arm64.tar.gz"
      sha256 "0cbbcd3b01dbb36d2c65879494ec348606dbfa249c25e8eb7d6a02efc30d8dcd"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v1.3.0/tyler_1.3.0_darwin_amd64.tar.gz"
      sha256 "f240b6a8b95cae42a15d5fbc2a50b7563535d4cf7769aca3f30f640b7c90a36b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
