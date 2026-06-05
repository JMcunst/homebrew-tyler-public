class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.243.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.243.0/tyler_0.243.0_darwin_arm64.tar.gz"
      sha256 "71ff57b5abc4d1d91a483a7ec6d31c6ebc77d96bd99f2923387276e76a4b03b4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.243.0/tyler_0.243.0_darwin_amd64.tar.gz"
      sha256 "5946b5ae8e8e55136b5e00a97166bfacfb27880ed49af74dbc9f119c8d15bf3e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
