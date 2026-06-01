class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.149.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.149.0/tyler_0.149.0_darwin_arm64.tar.gz"
      sha256 "da58db609b35603aec647542f5516a77651109982e898f1871edd0ddf52345a0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.149.0/tyler_0.149.0_darwin_amd64.tar.gz"
      sha256 "58da3741cd1b79bea39ed0848c947ec998671eb8048fabec8ed3fada8f2a2915"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
