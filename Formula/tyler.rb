class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.565.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.565.0/tyler_0.565.0_darwin_arm64.tar.gz"
      sha256 "09142be1a727e7a28abdd10b2fc5ad5e0369d79bfea621f0968a68bf80e07a32"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.565.0/tyler_0.565.0_darwin_amd64.tar.gz"
      sha256 "7c76094712550749c95958bcc6f602cfe36486e19ddc5acc3a7f53bff7c66a5d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
