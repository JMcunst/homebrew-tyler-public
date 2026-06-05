class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.246.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.246.0/tyler_0.246.0_darwin_arm64.tar.gz"
      sha256 "78a42568d8d51e6bc0165a152aafdd3dc1ef1c1d9890cec33639eedcee5e9b04"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.246.0/tyler_0.246.0_darwin_amd64.tar.gz"
      sha256 "580b9b70546f0832982a996913944c38f8a3e7236da82b53ae6a0dd842a9b92b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
