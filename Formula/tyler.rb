class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.559.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.559.0/tyler_0.559.0_darwin_arm64.tar.gz"
      sha256 "0bf4f197ed9b5c8d9439c89107c812eb7e1bd0f8231c3c04e93de20797441533"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.559.0/tyler_0.559.0_darwin_amd64.tar.gz"
      sha256 "af60940986fe44ab9a8aa2948b7b049dd500fa7ecb9df30510e19ac50141dbd4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
