class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.592.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.592.0/tyler_0.592.0_darwin_arm64.tar.gz"
      sha256 "d1c820cb33efd6a5cb68ed65e7a6e49b8f43a305ab4fd42866235efa617fc5df"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.592.0/tyler_0.592.0_darwin_amd64.tar.gz"
      sha256 "75380e695a9f27e84258c31d29eddceb3263d601402a552524ad571d37958f20"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
