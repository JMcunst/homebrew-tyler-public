class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.100.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.100.0/tyler_2.100.0_darwin_arm64.tar.gz"
      sha256 "cb26585f9a8522374977bc102944812e1f5b38702fc0595257710b79117ac5c2"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.100.0/tyler_2.100.0_darwin_amd64.tar.gz"
      sha256 "3b10bfbc2e75abdebdfc775365630b80c3eefd53f6c70814656d7f745582b71f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
