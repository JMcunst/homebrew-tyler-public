class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.551.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.551.0/tyler_0.551.0_darwin_arm64.tar.gz"
      sha256 "fc0eba3f2cf722d910644aea9b56952693d6271d84d31c586f70660fd77ced0b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.551.0/tyler_0.551.0_darwin_amd64.tar.gz"
      sha256 "fe2c46e6cdd93500df62ae8a5c68e5a015020ad05967992faf2ef64c459a1f2d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
