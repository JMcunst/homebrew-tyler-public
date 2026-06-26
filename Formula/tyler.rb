class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.540.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.540.0/tyler_0.540.0_darwin_arm64.tar.gz"
      sha256 "0a7f1ddfc76a36d4c40e2d38f081e156ebaf5b0a47e6298b13e31655edf930bd"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.540.0/tyler_0.540.0_darwin_amd64.tar.gz"
      sha256 "de56a885588c7138d34f54853d55dfc4261af841f05c9cd528f8fbfaabfd295c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
