class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.489.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.489.0/tyler_0.489.0_darwin_arm64.tar.gz"
      sha256 "f7616f6dd4193b1b1f46e3ea18de124a678e80e0997ebcb810f900d913a0b0fa"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.489.0/tyler_0.489.0_darwin_amd64.tar.gz"
      sha256 "48955d067ead861ba25510e3cb1d323321ceb50b1e2607ca605fe67a780baf13"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
