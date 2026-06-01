class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.129.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.129.0/tyler_0.129.0_darwin_arm64.tar.gz"
      sha256 "5d575a4f2f9b89318ee290dab3618a3fd11a43c3e0d2d62f48c97f5b7676ee1e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.129.0/tyler_0.129.0_darwin_amd64.tar.gz"
      sha256 "27f343c2d4d06daedef4190379341d1ecdb8b33e00baaccb6d999c5aea798d55"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
