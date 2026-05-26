class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.45.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.45.0/tyler_0.45.0_darwin_arm64.tar.gz"
      sha256 "ccdd086450da7ea98a5cc63e9dcd54cae4c62629d3778f1b1c9095ed785068fe"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.45.0/tyler_0.45.0_darwin_amd64.tar.gz"
      sha256 "ce4c77ce5c6bf6624a601dba7c838144cb2de5ca54b9c27bd5daef08fcc0b379"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
