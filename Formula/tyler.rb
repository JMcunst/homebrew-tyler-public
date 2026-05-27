class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.64.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.64.0/tyler_0.64.0_darwin_arm64.tar.gz"
      sha256 "903d4c4446ae42f92f6243bc0d69071f3cccf9c10ace75a31519cf63ff642cb6"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.64.0/tyler_0.64.0_darwin_amd64.tar.gz"
      sha256 "81d9faf5d255a1fca34b312ff7c8193c0b3c0a35b8d1dcefdd8dcc567fd85fc3"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
