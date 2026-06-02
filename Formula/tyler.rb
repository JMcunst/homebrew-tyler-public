class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.160.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.160.0/tyler_0.160.0_darwin_arm64.tar.gz"
      sha256 "2cd003a2cfa4c9317698c4f4c2402327e4808992befdace24e7781ec5b5de1bc"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.160.0/tyler_0.160.0_darwin_amd64.tar.gz"
      sha256 "4083c8fdf360eb231e8cdb762c1576e18f63fba7c833c528659626b6b02114ed"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
