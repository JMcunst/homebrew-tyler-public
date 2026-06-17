class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.392.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.392.0/tyler_0.392.0_darwin_arm64.tar.gz"
      sha256 "c1b00cf7d080c4a9d094f4d80524aa8827fcb614148b0bab3934f6c879eb17ac"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.392.0/tyler_0.392.0_darwin_amd64.tar.gz"
      sha256 "b7f85f94d8b5661c54727afce661e70d65d51d94573fa3aa90f0cec28425e76c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
