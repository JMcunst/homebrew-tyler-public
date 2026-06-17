class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.390.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.390.0/tyler_0.390.0_darwin_arm64.tar.gz"
      sha256 "c1422bf576754c7ae18241fb38b90f97974b8865fe6669f3af8ccbe9529c983c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.390.0/tyler_0.390.0_darwin_amd64.tar.gz"
      sha256 "324465a9a9ec22f4eb5ddfcefe20925d9791211cea0d1869ef86beeed1d07db2"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
