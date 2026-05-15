class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.6.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.6.1/tyler_0.6.1_darwin_arm64.tar.gz"
      sha256 "93f2036ad316a1f95093650fcd24983bd4c893895cf9322eeac40373db4864e8"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.6.1/tyler_0.6.1_darwin_amd64.tar.gz"
      sha256 "e89bb89c4cacd9fb2cad87c3f32393f8ef268b42dc2cd992e5d62c794325e9bf"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
