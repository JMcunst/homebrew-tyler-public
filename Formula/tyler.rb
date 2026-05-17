class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.9.6"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.6/tyler_0.9.6_darwin_arm64.tar.gz"
      sha256 "fc1fa5b48620dfe42fc042d4f0a82023be1901269c4d7c6e219edd90ec666f49"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.6/tyler_0.9.6_darwin_amd64.tar.gz"
      sha256 "87d9464edfe5c635f8bd4588027329e4dc459cc82611890369407aca4d62f410"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
