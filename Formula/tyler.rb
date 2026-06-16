class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.379.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.379.0/tyler_0.379.0_darwin_arm64.tar.gz"
      sha256 "04af908fe0da1715a1a2d4ca01670cc987f88df2a3080877398c05cd1a956a72"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.379.0/tyler_0.379.0_darwin_amd64.tar.gz"
      sha256 "5e46d9d9a29cac2a218a72af41465b0cea32ec31462f60e3efd1b166e42bd477"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
