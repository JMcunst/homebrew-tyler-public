class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.10.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.10.0/tyler_0.10.0_darwin_arm64.tar.gz"
      sha256 "8dd1bd07760a341bccf40d2a1a5afcb3a67f4e191a03d79f0816800865c67581"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.10.0/tyler_0.10.0_darwin_amd64.tar.gz"
      sha256 "62df7d492a101e855f05de3025783cab85efe86c74a26427c46cb9378721f0aa"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
