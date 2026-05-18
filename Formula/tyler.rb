class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.18.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.18.0/tyler_0.18.0_darwin_arm64.tar.gz"
      sha256 "5f15243b901c6f6c24ccb7fbdf524158b6248b499f4f826b0989726711420fad"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.18.0/tyler_0.18.0_darwin_amd64.tar.gz"
      sha256 "8292d68f01cd1086475a3644157676cfe305a967827fbe824b246ebf3b8bdd71"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
