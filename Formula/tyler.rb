class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.231.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.231.0/tyler_0.231.0_darwin_arm64.tar.gz"
      sha256 "1f166cc250c61139ee1b35d1b74990e0661b4f74b5ad7a90529eb522f89afdbd"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.231.0/tyler_0.231.0_darwin_amd64.tar.gz"
      sha256 "634d397496903f0d7906a17669e51e221b11382f21b94eee20ff79a3372988d5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
