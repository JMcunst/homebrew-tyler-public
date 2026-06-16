class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.377.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.377.0/tyler_0.377.0_darwin_arm64.tar.gz"
      sha256 "77174c617d7937529f4f105ee4d7e38d6a199528aa6d95a5a618dc70d0c32761"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.377.0/tyler_0.377.0_darwin_amd64.tar.gz"
      sha256 "d828fe22ce5b0756c8eeaf48ed1a5c814784b081f6cda93fdda1100d68e6cf51"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
