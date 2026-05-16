class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.6"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.6/tyler_0.3.6_darwin_arm64.tar.gz"
      sha256 "f607928ea91ae23ded270940165246acf15f69a4ef123b07128dfd35802aea52"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.6/tyler_0.3.6_darwin_amd64.tar.gz"
      sha256 "6ffc700a3f489f3350a4df6a7f09270896ab55dcbfa01ba592e14e54db0f0412"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
