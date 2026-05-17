class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.9.8"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.8/tyler_0.9.8_darwin_arm64.tar.gz"
      sha256 "c18d6047f67d08f8dcaf96e1fffac7347d88a414c9b06427ea5ac73037e3bf16"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.8/tyler_0.9.8_darwin_amd64.tar.gz"
      sha256 "f1832669817c14ce39a113669efe1cddf6cfef76cd6f1d1c0d69fc7c95e7d300"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
