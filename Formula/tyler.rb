class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.159.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.159.0/tyler_0.159.0_darwin_arm64.tar.gz"
      sha256 "fad395d8145d7ac943f169173215dd287c886efd3cbfb499acbba6afa176509a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.159.0/tyler_0.159.0_darwin_amd64.tar.gz"
      sha256 "39876e57e1ed597737b033bb3d7e29004144cd0c97cc1677944dcf616a96359c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
