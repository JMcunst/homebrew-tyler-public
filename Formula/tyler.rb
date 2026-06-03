class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.179.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.179.0/tyler_0.179.0_darwin_arm64.tar.gz"
      sha256 "fb65d3de9d8be6e7c55a277ebb671d1634a7a8de824da3b661cbdbb00ba5ee02"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.179.0/tyler_0.179.0_darwin_amd64.tar.gz"
      sha256 "2d859b6da78c2747bbfbfd0261615b8d6c06c5e8b5918ee92a36baf4ddd4b55d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
