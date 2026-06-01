class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.108.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.108.0/tyler_0.108.0_darwin_arm64.tar.gz"
      sha256 "0b2de59bafaa6e20d650acca2a5d5ce7688c149f981476189e4ad0fad71c30a7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.108.0/tyler_0.108.0_darwin_amd64.tar.gz"
      sha256 "46d5aa9306e4fb2dda90c0f56649d7d3f939e6ea0794977d48af2899ce8d9f8e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
