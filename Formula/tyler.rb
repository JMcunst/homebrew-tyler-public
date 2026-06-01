class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.116.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.116.0/tyler_0.116.0_darwin_arm64.tar.gz"
      sha256 "b914d211ca844253666f79d9dbecbbcc2e5eef940000b3096a2e75f978f56c23"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.116.0/tyler_0.116.0_darwin_amd64.tar.gz"
      sha256 "7272cea09a3866c185c38dc324c9dd827f4e032849ea0347cb69ed61c9e0eda7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
