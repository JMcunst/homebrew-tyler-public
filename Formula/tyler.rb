class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.425.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.425.0/tyler_0.425.0_darwin_arm64.tar.gz"
      sha256 "85188aec2bcb94dfeac7db2bafc4218123538bba3fe7cdefb2f7d79e2b147a0e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.425.0/tyler_0.425.0_darwin_amd64.tar.gz"
      sha256 "b1125e4757dd36b8c9c17acf5dccd3acb379edefcdceaafcd7169eefd5097c49"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
