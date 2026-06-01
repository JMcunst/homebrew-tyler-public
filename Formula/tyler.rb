class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.107.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.107.0/tyler_0.107.0_darwin_arm64.tar.gz"
      sha256 "3cd63e6bc8d3907a6f1b946099b3476b7e8481dfef0b831f59c0e9d7ae29e997"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.107.0/tyler_0.107.0_darwin_amd64.tar.gz"
      sha256 "e325c72501a17339929f22761fb97ef30e7625a67d1cc2d42a81a76d28212bd4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
