class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.432.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.432.0/tyler_0.432.0_darwin_arm64.tar.gz"
      sha256 "71a9a5307330e725f6a7ff6459392c94d045bf5e3dacf290686d1ed488f3aa5a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.432.0/tyler_0.432.0_darwin_amd64.tar.gz"
      sha256 "c8395872d52c8ed0a904c499fdf4306e7ae14f1b58ba6184c0bc71c7c4ad9253"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
