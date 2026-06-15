class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.356.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.356.0/tyler_0.356.0_darwin_arm64.tar.gz"
      sha256 "15052a5e4e28dba050fab5962579cf761f120596b07e85731e55d928c4b95b4e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.356.0/tyler_0.356.0_darwin_amd64.tar.gz"
      sha256 "d23392723756aec220de285a0e4e09b89851abc3c113f707dddbf524d6d81c87"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
