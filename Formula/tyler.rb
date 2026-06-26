class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.550.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.550.0/tyler_0.550.0_darwin_arm64.tar.gz"
      sha256 "c9df666c7e950f4883639d8dfb4609ccb25151790df71046f5361bcc8321e6fc"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.550.0/tyler_0.550.0_darwin_amd64.tar.gz"
      sha256 "36349c6abaa29a751f771c4481761522367a720c2ceb3923bea8a5faa517186f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
