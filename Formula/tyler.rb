class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.92.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.92.0/tyler_2.92.0_darwin_arm64.tar.gz"
      sha256 "40399ac94346a93903c8f331b990767138a59e298a3c9bdad95335650525ad72"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.92.0/tyler_2.92.0_darwin_amd64.tar.gz"
      sha256 "42f3b20849eea07946551a8639909c80c5b5a0e59865d7112967b6b40f3bd983"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
