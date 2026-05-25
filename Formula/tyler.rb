class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.40.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.40.0/tyler_0.40.0_darwin_arm64.tar.gz"
      sha256 "ed007a7f383028fbe5c93c92fec788b72179aa0119ee8e95829e1f88efff166a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.40.0/tyler_0.40.0_darwin_amd64.tar.gz"
      sha256 "d27a9b7ae6d8db38695ee3955f004d87cdd8ef004879797cf07203293a9aae1c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
