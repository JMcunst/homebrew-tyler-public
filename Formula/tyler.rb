class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.606.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.606.0/tyler_0.606.0_darwin_arm64.tar.gz"
      sha256 "8c180e4a69bc7f9b79d97e73f3c90bf1ba28e58e5fb0e190314fcce5cd05c739"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.606.0/tyler_0.606.0_darwin_amd64.tar.gz"
      sha256 "4bd53d1898385d292fc3f5de27a5e39e0d85b1201fcdea99b139303a687b9165"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
