class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.111.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.111.0/tyler_0.111.0_darwin_arm64.tar.gz"
      sha256 "139bac4827dc7c7cf3f1e9e0ca39c15509ce7c9e9472488efff304957c537929"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.111.0/tyler_0.111.0_darwin_amd64.tar.gz"
      sha256 "9d8a199fe45d39c75d4ade1491676c65b7c37018ce697181b7fd4c5d4b664155"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
