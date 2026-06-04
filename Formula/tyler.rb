class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.201.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.201.0/tyler_0.201.0_darwin_arm64.tar.gz"
      sha256 "0a054a58c812a4c72e7d95d1a5a60bde1c51645048118ad3ed9edb1283fdec79"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.201.0/tyler_0.201.0_darwin_amd64.tar.gz"
      sha256 "2eb4037ba3d32d8ef91ce70cc3fb852e7c659c44d4d85e1ee33cff2322d0ab10"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
