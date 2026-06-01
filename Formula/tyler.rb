class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.113.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.113.0/tyler_0.113.0_darwin_arm64.tar.gz"
      sha256 "37ac5cab51632ee2d3e43fa08c3361855ff92127f87f5c739bcfeef10c9075ec"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.113.0/tyler_0.113.0_darwin_amd64.tar.gz"
      sha256 "c307fcd1f34f2d9f9a3180d18a13b860190cf9832114e080ad0cf7dc9f936d52"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
