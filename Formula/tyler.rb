class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.412.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.412.0/tyler_0.412.0_darwin_arm64.tar.gz"
      sha256 "f3ab0a6d9c477d2f4642f7f3b0bf49cc612e29e5d1d0683da4fe884f7836a0f0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.412.0/tyler_0.412.0_darwin_amd64.tar.gz"
      sha256 "dd4571321a291362506372c452331b56042a56fd17012b799aa5eacfd73619e0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
