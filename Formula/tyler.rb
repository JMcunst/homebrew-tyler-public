class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.213.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.213.0/tyler_0.213.0_darwin_arm64.tar.gz"
      sha256 "93f6df853224fe8adcedd6a7408a8474907d0b0b17e0cb03c89ebd6d95f1e4e5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.213.0/tyler_0.213.0_darwin_amd64.tar.gz"
      sha256 "ef360928e8f752e8823bfa7f8cf2bc1180fbaec87f262308aced3bf55a7679f8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
