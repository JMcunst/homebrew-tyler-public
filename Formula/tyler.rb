class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.230.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.230.0/tyler_0.230.0_darwin_arm64.tar.gz"
      sha256 "403f7dd8b6081b9f983d3c051b3dfd9ae8c3f9176691c9a1d2fc1f001f81f454"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.230.0/tyler_0.230.0_darwin_amd64.tar.gz"
      sha256 "1015d679b99f79f68c7ce3a4141fc4808e3abcf93f25f07ec9641ecf4f40123c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
