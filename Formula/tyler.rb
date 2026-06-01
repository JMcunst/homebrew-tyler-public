class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.128.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.128.0/tyler_0.128.0_darwin_arm64.tar.gz"
      sha256 "79c8b496b268073c904afbf9cb0ac9dd6ef9fa9bc3c75868255964453bad37e3"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.128.0/tyler_0.128.0_darwin_amd64.tar.gz"
      sha256 "8110fee85b0bd85c278f9ab1e714e74e2ba09ca3c7e5e03eecd11d074f357963"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
