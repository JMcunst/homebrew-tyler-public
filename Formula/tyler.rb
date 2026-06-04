class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.202.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.202.0/tyler_0.202.0_darwin_arm64.tar.gz"
      sha256 "5327f7619995b78ff44a9ff298e9cb3a196cb6e36dfaa90a7286569cd0d12e1c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.202.0/tyler_0.202.0_darwin_amd64.tar.gz"
      sha256 "5874e2183eb2e0f68034b094d12f67b2669bb261173327a6691d9f38eba36427"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
