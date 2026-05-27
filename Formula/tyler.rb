class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.61.3"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.61.3/tyler_0.61.3_darwin_arm64.tar.gz"
      sha256 "694f7d677302d3dc0057f05b63d9d886a71e78823a64db252cda05554603d1cb"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.61.3/tyler_0.61.3_darwin_amd64.tar.gz"
      sha256 "61b2cb29e56d5edd46f04ceb3ff9193219a3d802e14cea03bb08437188f0b608"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
