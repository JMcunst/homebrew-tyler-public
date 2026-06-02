class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.172.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.172.0/tyler_0.172.0_darwin_arm64.tar.gz"
      sha256 "677a0e9970c08518313ac294c052d3427170cd748dc9f2abebb1b606e16937a2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.172.0/tyler_0.172.0_darwin_amd64.tar.gz"
      sha256 "0ca50cb8ddefecfe64cc901e2191da6e0fd9c81dbfcc55056b284c188e3c31f0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
