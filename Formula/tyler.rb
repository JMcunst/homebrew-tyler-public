class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.89.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.89.0/tyler_0.89.0_darwin_arm64.tar.gz"
      sha256 "9a922cc24590b9eacd145b453587e7562ca740db8003b7956eda99de6f1276db"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.89.0/tyler_0.89.0_darwin_amd64.tar.gz"
      sha256 "4e09a501e9222a8e1889931ec6c9f04ea16cdf7bfcbc46b325d03e4fdd4f4461"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
