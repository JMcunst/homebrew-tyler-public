class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.208.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.208.0/tyler_0.208.0_darwin_arm64.tar.gz"
      sha256 "e026a7ca56a180e0278ebb2ca0025182c4af48fa781c5d4efbbcf1573025ad53"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.208.0/tyler_0.208.0_darwin_amd64.tar.gz"
      sha256 "caf756856b6f4b8d6c9f391bd491663b54de928e5388305cc45eb2893897a0c1"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
