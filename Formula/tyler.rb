class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.387.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.387.0/tyler_0.387.0_darwin_arm64.tar.gz"
      sha256 "8915fc5adc5fec4b9cf60072e5da3a3f6180cf7406a0c919879f775c7f9a49fb"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.387.0/tyler_0.387.0_darwin_amd64.tar.gz"
      sha256 "17e9c63972f1ae4a1d0141ea4aa31b03e8442da4aec35c85b5cecc1ceb882b41"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
