class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.441.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.441.0/tyler_0.441.0_darwin_arm64.tar.gz"
      sha256 "0ed45e84c8ddf0ea92a7a8679d3619f27ac4ec6fbfbac0d15ba6730d46895cb6"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.441.0/tyler_0.441.0_darwin_amd64.tar.gz"
      sha256 "b1c3f300ae364e24dc6e0d29a0e73265e18567dff3a77e702a59c3945df55fac"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
