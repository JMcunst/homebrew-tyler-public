class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.478.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.478.0/tyler_0.478.0_darwin_arm64.tar.gz"
      sha256 "2f8e2175fafe00fc7429e309d4b94dd9b295038b92deac7cc2cbe6c22c5e1649"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.478.0/tyler_0.478.0_darwin_amd64.tar.gz"
      sha256 "173e263cf21f27f1714307ae2b53adb67f9c62db2a798e81aaa15daccecff906"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
