class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.48.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.48.0/tyler_0.48.0_darwin_arm64.tar.gz"
      sha256 "9ba2cec00482623a6af18166dc2ba1db3f5846dd2042b76a3ff99ee26800767c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.48.0/tyler_0.48.0_darwin_amd64.tar.gz"
      sha256 "50cb8e4aad5c5037661817d3c21bb9b7ff10c04e17633c95fcbefe6bf5dd83f8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
