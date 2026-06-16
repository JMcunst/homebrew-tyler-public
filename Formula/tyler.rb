class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.375.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.375.0/tyler_0.375.0_darwin_arm64.tar.gz"
      sha256 "86af434ef0fa8d05efb321f2dc6ea6a4d35629695b0183a4b8419ee2a8a7d705"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.375.0/tyler_0.375.0_darwin_amd64.tar.gz"
      sha256 "0b49a00547486c1f62452e000192673f8e5e5f31b686a30af91df800fb6f0b94"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
