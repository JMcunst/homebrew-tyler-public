class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.33.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.33.0/tyler_0.33.0_darwin_arm64.tar.gz"
      sha256 "d0d9b2b1465b39356801c2205ec09a9c74b20ae526d07220eaf3ae5e6a1b5c7b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.33.0/tyler_0.33.0_darwin_amd64.tar.gz"
      sha256 "ad035619c535a0ec1411dfbfbe08eb5168c4c09411ca1c28310cec714d3f9a22"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
