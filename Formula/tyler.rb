class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.204.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.204.0/tyler_0.204.0_darwin_arm64.tar.gz"
      sha256 "a15be313e75dcb5dda7b54e50ab8892fefded14ce5b3beb0c714eba4677755a2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.204.0/tyler_0.204.0_darwin_amd64.tar.gz"
      sha256 "f448a2a7e728cf9797e4c26ea8a5d1c093b10bdd0a6eaa47a0f7b56ee8a746f5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
