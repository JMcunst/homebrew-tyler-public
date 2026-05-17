class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.9.5"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.5/tyler_0.9.5_darwin_arm64.tar.gz"
      sha256 "e8ecf314661bdc029828b2d01cc3c7565755dc79dabf6b098a224c493c93087a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.5/tyler_0.9.5_darwin_amd64.tar.gz"
      sha256 "9451325dc70a4f46a0fba4c3169c768089c45fb367c9db942acc71911def451b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
