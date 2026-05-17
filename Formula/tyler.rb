class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.9.3"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.3/tyler_0.9.3_darwin_arm64.tar.gz"
      sha256 "162fd69eff4a801a36a0ea7d8753c64f65450a32b422c97eed1d0542a2757d3e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.3/tyler_0.9.3_darwin_amd64.tar.gz"
      sha256 "2ad30db2d9ed499b8ddec0daaa0d3c56c680b573ff59fe6e45e510a7ac2bf611"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
