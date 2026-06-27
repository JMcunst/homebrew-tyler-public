class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.555.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.555.0/tyler_0.555.0_darwin_arm64.tar.gz"
      sha256 "709fdff39aff52365ff0213d73b2bb844d86fa34b60a17fa61fa357828010920"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.555.0/tyler_0.555.0_darwin_amd64.tar.gz"
      sha256 "8da0425bcad1b7bccfed15befb617b5877ffeddcda505ddb1d08ec6a573f4fe2"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
