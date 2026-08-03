class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.93.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.93.0/tyler_2.93.0_darwin_arm64.tar.gz"
      sha256 "03284c5a8225c3500fed6960dc25f9071e1862f55564a7ad42079bff45b1aba5"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.93.0/tyler_2.93.0_darwin_amd64.tar.gz"
      sha256 "20532b331647d07546470e199bfc8b1cab5307f45dda0bce1099855357da7d39"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
