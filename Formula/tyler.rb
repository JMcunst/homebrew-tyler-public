class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.453.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.453.0/tyler_0.453.0_darwin_arm64.tar.gz"
      sha256 "67b64f14ab1f56003d05a9c0bb59dcfd4d3940a28c5fe41be0afa18b37f6fd52"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.453.0/tyler_0.453.0_darwin_amd64.tar.gz"
      sha256 "8d0ce93dddcbd2ffbd92547ecc29706e12123d4d05defb823436846a3d115d54"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
