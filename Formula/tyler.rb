class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.599.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.599.0/tyler_0.599.0_darwin_arm64.tar.gz"
      sha256 "841c0e4fabcd28f565a9035412c32de57dfe14bf10f3f7b17cd85eed8b7f1191"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.599.0/tyler_0.599.0_darwin_amd64.tar.gz"
      sha256 "93c774c3ea5011727efe380e65d5fe024049389219979209464443dfb5f25da6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
