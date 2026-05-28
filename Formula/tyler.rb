class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.65.2"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.65.2/tyler_0.65.2_darwin_arm64.tar.gz"
      sha256 "6e42b64a5860bdee3c65cfe91b4517a6722cecf4a0e8a4aaefe1e664c00a4c44"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.65.2/tyler_0.65.2_darwin_amd64.tar.gz"
      sha256 "33852cfd860c5f226fee75c7d513a7844a3bf1118932a0d403569df9542e2a1e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
