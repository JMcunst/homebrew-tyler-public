class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.263.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.263.0/tyler_0.263.0_darwin_arm64.tar.gz"
      sha256 "025e62b29a4a6aaed3119d14ccdb106949d21506093aa5b922ae669b62ed0a94"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.263.0/tyler_0.263.0_darwin_amd64.tar.gz"
      sha256 "ba8412ba5ad261dc92e51eac8d5c68fa49052ba5f2611551a2cdbf23a6b124ee"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
