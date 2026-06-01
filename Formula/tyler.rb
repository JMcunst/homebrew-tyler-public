class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.148.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.148.0/tyler_0.148.0_darwin_arm64.tar.gz"
      sha256 "2a0e9b6c703444aded55b41be7697963a05b9aba67c775c6e53ac3557b5b7a1a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.148.0/tyler_0.148.0_darwin_amd64.tar.gz"
      sha256 "bc3362cd1e8ba296644668e36a662ce668c3c0e2ac52798f767037dca5567633"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
