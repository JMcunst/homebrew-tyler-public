class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.264.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.264.0/tyler_0.264.0_darwin_arm64.tar.gz"
      sha256 "b35fb131924b5c7e1672b565922e9fc74c654eb8a25d1dfb217704db40aafea7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.264.0/tyler_0.264.0_darwin_amd64.tar.gz"
      sha256 "f56d6e37420820727ba3ac8683089c9bb6795803397724c6190c2008b33fce9e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
