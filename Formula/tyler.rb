class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.439.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.439.0/tyler_0.439.0_darwin_arm64.tar.gz"
      sha256 "f72e1e2908abfc2b754091e7e6ed6efc104a38652f30d0c4be49ae193f1ee3fe"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.439.0/tyler_0.439.0_darwin_amd64.tar.gz"
      sha256 "8cc9a2b30a9a5442b3447dc91b5504b913a0a03762f371fe6973b4de0b296420"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
