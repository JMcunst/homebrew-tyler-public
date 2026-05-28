class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.70.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.70.1/tyler_0.70.1_darwin_arm64.tar.gz"
      sha256 "2b73555ef0cb66de3bfdc00144f3cb1b3ddd2af62c54165b30efec5bc8bb2e79"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.70.1/tyler_0.70.1_darwin_amd64.tar.gz"
      sha256 "d2a4257e73be81f14207103bacbc813507c26ccb7386d58d13000d99a44489b9"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
