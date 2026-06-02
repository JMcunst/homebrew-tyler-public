class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.170.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.170.0/tyler_0.170.0_darwin_arm64.tar.gz"
      sha256 "db60d2fab871f3f09d105f06723b5d705dc14352ee46962492bfc650b3cb6635"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.170.0/tyler_0.170.0_darwin_amd64.tar.gz"
      sha256 "1c8042f36d3ca51bcf8de3e67911b26dcc8f858a8623fbbd54442be8e0195b64"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
