class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.427.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.427.0/tyler_0.427.0_darwin_arm64.tar.gz"
      sha256 "b1b60ba6f5d51ec4ab3fbe220b91d668d16cdfa07d06f4915d16639a8f10ff20"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.427.0/tyler_0.427.0_darwin_amd64.tar.gz"
      sha256 "f1c4041d1917eeb56c41ddea3dae7d10dcdf5c274570ae84688c41fcbd139afb"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
