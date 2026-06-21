class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.466.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.466.0/tyler_0.466.0_darwin_arm64.tar.gz"
      sha256 "30e42fdeb3881052ac626a15ab6d07a2380205f56d04c1ae73cc9a713b2b0def"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.466.0/tyler_0.466.0_darwin_amd64.tar.gz"
      sha256 "8207e8e058054077135bfb952024d624f91125ae8f1f26af68d68e50096bdc10"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
