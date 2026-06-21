class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.458.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.458.0/tyler_0.458.0_darwin_arm64.tar.gz"
      sha256 "5f37a22ceb34693652e0758aac0adb6de43a361fcce20a45488c7a966044643d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.458.0/tyler_0.458.0_darwin_amd64.tar.gz"
      sha256 "6b3c21acb73a7cedf9576396a249d792df67f12abd9a8194219633db5325834a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
