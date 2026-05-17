class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.13"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.13/tyler_0.3.13_darwin_arm64.tar.gz"
      sha256 "e9c04bbc9a24e4fef551a9b484c65ba0745b3e0d2c2a86c884c35de4fc9061eb"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.13/tyler_0.3.13_darwin_amd64.tar.gz"
      sha256 "66bd13eafbf12e4eedc910bce76c68e3058571d80f0201c9620a1363d2d83489"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
