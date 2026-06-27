class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.558.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.558.0/tyler_0.558.0_darwin_arm64.tar.gz"
      sha256 "e2c859916de800dc7c5217de93f27f532c95e774c54aeeacd04696ecf8cdbda7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.558.0/tyler_0.558.0_darwin_amd64.tar.gz"
      sha256 "3d0b70a31dd7ef4857e9a1c0b05ee831ab8cdee5686a8ee656e19266983483ba"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
