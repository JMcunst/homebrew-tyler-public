class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.56.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.56.0/tyler_0.56.0_darwin_arm64.tar.gz"
      sha256 "e4220ebdf0f6698ac9039e730cbf1f99d7d08dd35f97c8f10d4c509caa0c3567"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.56.0/tyler_0.56.0_darwin_amd64.tar.gz"
      sha256 "6ee47b21ce2a3767625ebbf4d269aee677167df1d255921b47efa6162c2e8f5d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
