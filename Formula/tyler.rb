class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.355.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.355.0/tyler_0.355.0_darwin_arm64.tar.gz"
      sha256 "d5c7886e4d4da570c89cb5ccd8a324b3517541cd29f1663fca4ed46f9fb474bf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.355.0/tyler_0.355.0_darwin_amd64.tar.gz"
      sha256 "4a208899b73481febc6752175adecf82a9dca84e57e8d22e8d1e8370fbb8039f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
