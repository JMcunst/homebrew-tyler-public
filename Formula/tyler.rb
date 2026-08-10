class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.115.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.115.0/tyler_2.115.0_darwin_arm64.tar.gz"
      sha256 "4f925457d62a36ebfb2a594e2f4f92ea5db921c600698b95c5dbc8e96ca29675"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.115.0/tyler_2.115.0_darwin_amd64.tar.gz"
      sha256 "5db9511d3044f58b7e949c314b8ad6020b0a727e27677f91edc2c4d19d5bca1e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
