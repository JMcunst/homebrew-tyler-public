class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.219.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.219.0/tyler_0.219.0_darwin_arm64.tar.gz"
      sha256 "162765ed1620b6e7f5f022699520da8e4e5c6f07b3d26400c2b82ad95a83a2f8"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.219.0/tyler_0.219.0_darwin_amd64.tar.gz"
      sha256 "5d84ad2463a0eb5c9e526e0b0db8ef4ae3156512be5f4a5f93c985b8c3834f9e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
