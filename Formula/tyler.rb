class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.258.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.258.0/tyler_0.258.0_darwin_arm64.tar.gz"
      sha256 "a9e714c504c2e7ee858d3728dd123758ce24c4bf44c54b79843a7da0ceb273a3"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.258.0/tyler_0.258.0_darwin_amd64.tar.gz"
      sha256 "0da8965f1e075be1e9fa8d26dd9d5beee4ed471ab2a38b1c17929c6872e73d0c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
