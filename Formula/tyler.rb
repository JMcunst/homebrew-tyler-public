class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.418.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.418.0/tyler_0.418.0_darwin_arm64.tar.gz"
      sha256 "1bf416ec02c0efed2cfb9d3a3c6d93c932a5334a34976f1bed0a2e4a21eeee5a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.418.0/tyler_0.418.0_darwin_amd64.tar.gz"
      sha256 "f1cd10cc492f04006d403f6f6a48c0198d2954027ecc058ba1a37609c7dfa333"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
