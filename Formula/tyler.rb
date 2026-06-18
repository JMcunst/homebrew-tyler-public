class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.423.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.423.0/tyler_0.423.0_darwin_arm64.tar.gz"
      sha256 "93f138fbed00b25dc050ec09651644f6582c785aab9be3821fe3a6b588a092fa"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.423.0/tyler_0.423.0_darwin_amd64.tar.gz"
      sha256 "9553cec7081be48b88026869c98c9013645bdaf7a25931963d3164f63b46da13"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
