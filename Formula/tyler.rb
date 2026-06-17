class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.415.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.415.0/tyler_0.415.0_darwin_arm64.tar.gz"
      sha256 "333caded5dc97cd4095820da338a196ae2293da68e5ab369125d6875bb78e7fa"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.415.0/tyler_0.415.0_darwin_amd64.tar.gz"
      sha256 "58ca4eac4832c9666ef240a46592a4b1e09a1f703c89afd2c7bbfa420bf22d8c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
