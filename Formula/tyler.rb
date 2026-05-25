class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.39.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.39.0/tyler_0.39.0_darwin_arm64.tar.gz"
      sha256 "912540219fa6757adce1d7c750ad8f9ba254bf5b1163135b18a92aa602f68924"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.39.0/tyler_0.39.0_darwin_amd64.tar.gz"
      sha256 "909f2809c080c8db41fabb1e8c3a2a73e488164b115a7bb6be551477e17c2889"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
