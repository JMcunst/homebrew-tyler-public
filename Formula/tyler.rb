class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.43.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.43.0/tyler_0.43.0_darwin_arm64.tar.gz"
      sha256 "7f6bf2120972aeee260d1e841e13b4e27d3ffd8bb58552582701b1d35ff2d2b4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.43.0/tyler_0.43.0_darwin_amd64.tar.gz"
      sha256 "7f504d4396efe67110221dfa19a16d02f6b131dbdf20cc11e072e98e849e44fd"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
