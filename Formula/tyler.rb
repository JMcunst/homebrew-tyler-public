class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.562.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.562.0/tyler_0.562.0_darwin_arm64.tar.gz"
      sha256 "c82278d170f6be336ba6ee2793dcf96e43244e6a890fe586ab2748a2c5be8242"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.562.0/tyler_0.562.0_darwin_amd64.tar.gz"
      sha256 "001476b17677cc012dc7d8bfeefbdf589461e9ec80ac50aa934f3dc7228bca9f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
