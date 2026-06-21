class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.457.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.457.0/tyler_0.457.0_darwin_arm64.tar.gz"
      sha256 "c4644eb5318d62f25c475e7fcaa1360045c7e7fa8d9e54bf332145821d4a07de"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.457.0/tyler_0.457.0_darwin_amd64.tar.gz"
      sha256 "ad07c60785888746fbd7a324ecc62d33d92d785b69f55d13c12776beeef347d8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
