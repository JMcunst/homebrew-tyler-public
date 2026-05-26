class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.47.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.47.0/tyler_0.47.0_darwin_arm64.tar.gz"
      sha256 "7698e67cc35b0808e1ae78de1b5387fe20b9bb265b6e635e26486ac417ea5111"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.47.0/tyler_0.47.0_darwin_amd64.tar.gz"
      sha256 "1e3d08ca0f45c0e11b944c1eb0268cdb3851baf4f505f7428fa1f3ab12ed5044"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
