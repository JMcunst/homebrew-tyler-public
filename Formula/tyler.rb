class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.275.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.275.0/tyler_0.275.0_darwin_arm64.tar.gz"
      sha256 "d550bb77379f7a08547b5bd7811fdb112a84d13a64b156f6b98bc877af1146d0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.275.0/tyler_0.275.0_darwin_amd64.tar.gz"
      sha256 "f48c372aaa95f6408a94422206314c8836505c20b868818ad98406189a7aa9db"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
