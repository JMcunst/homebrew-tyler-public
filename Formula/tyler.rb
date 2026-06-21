class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.468.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.468.0/tyler_0.468.0_darwin_arm64.tar.gz"
      sha256 "41e608028472f42ce343b10368c092c7c4f4b73e870cb900772621a3b09c17e1"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.468.0/tyler_0.468.0_darwin_amd64.tar.gz"
      sha256 "202867fff43546efde2818e1ed7a1242ebfef3adccec1cc9c1d2fe881205a35c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
