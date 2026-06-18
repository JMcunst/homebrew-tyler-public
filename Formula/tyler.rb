class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.435.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.435.0/tyler_0.435.0_darwin_arm64.tar.gz"
      sha256 "3f86bc95e3cf490a2ce50639399b0107de2c609af911774309ef95f9a3f87ba1"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.435.0/tyler_0.435.0_darwin_amd64.tar.gz"
      sha256 "253544428d6582a52c6b6c0ebb020ea95f5f0d9f315e938bfa58d112b4d509c2"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
