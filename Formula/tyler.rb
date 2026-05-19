class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.28.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.28.0/tyler_0.28.0_darwin_arm64.tar.gz"
      sha256 "29e153fa99fd5526a3a4e546d705e77b094d092680748b244ea17c668e8ab439"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.28.0/tyler_0.28.0_darwin_amd64.tar.gz"
      sha256 "82ec5639fd87d0376c1ae762a93b824e5563cb59223481274fe08e47f007d290"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
