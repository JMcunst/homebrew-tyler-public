class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.5.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.5.0/tyler_0.5.0_darwin_arm64.tar.gz"
      sha256 "2471329b84a3e50329d2395363779d94c1e30d79928cae8c5f2a7641f85f2c0e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.5.0/tyler_0.5.0_darwin_amd64.tar.gz"
      sha256 "bfa9882ff7a4611c391ab6bcd1bbd846ef7f30a8fc12e403b7e3a984d346f00e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
