class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.449.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.449.0/tyler_0.449.0_darwin_arm64.tar.gz"
      sha256 "cfce31815aa70acdd6024e0c53063a3e3f189aa1435bc5b33bc8a20812d2e8f6"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.449.0/tyler_0.449.0_darwin_amd64.tar.gz"
      sha256 "4169b100a2ad0b94dad2de69427e7b6e150fd0ffd378ec8313b44f3d956525a4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
