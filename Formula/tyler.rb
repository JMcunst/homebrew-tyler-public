class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.266.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.266.0/tyler_0.266.0_darwin_arm64.tar.gz"
      sha256 "8482bb3d18308283b9b4809159636a285ce698d90514fd00e6ba834e4414ec87"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.266.0/tyler_0.266.0_darwin_amd64.tar.gz"
      sha256 "143c6cbcb59a97262ad8cb6dd5b70243c636fb373fe631004ef6ce1f3eb0b12e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
