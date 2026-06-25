class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.530.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.530.0/tyler_0.530.0_darwin_arm64.tar.gz"
      sha256 "217d68722da610821defb877e3bf975881431e169309736a1cf6e374c877effb"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.530.0/tyler_0.530.0_darwin_amd64.tar.gz"
      sha256 "d498f1ae3f03ec67d8bb02ba74b3403c06a72747bef6dfe1e20ef47315bfb741"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
