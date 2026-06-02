class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.174.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.174.0/tyler_0.174.0_darwin_arm64.tar.gz"
      sha256 "e31f58420b318a1d7045fd5535f0d99467c37e62919f12ef8bf2fcee03e8468d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.174.0/tyler_0.174.0_darwin_amd64.tar.gz"
      sha256 "08afd8b14d4cd3bb55be5b9f92bcf20f9084432bf415dd1ba07d00c022c22841"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
