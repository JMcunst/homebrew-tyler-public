class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.229.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.229.0/tyler_0.229.0_darwin_arm64.tar.gz"
      sha256 "706fd890f11d60f0d780fb47d8df9394f878fe6b28c10b39faa4a56a33bf1f9c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.229.0/tyler_0.229.0_darwin_amd64.tar.gz"
      sha256 "8e8001af72c255e26398c9fe09fd0efacd4f82c0b721173c408cb3dac558556a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
