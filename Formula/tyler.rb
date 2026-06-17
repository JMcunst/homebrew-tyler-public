class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.404.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.404.0/tyler_0.404.0_darwin_arm64.tar.gz"
      sha256 "e341c11c56e2ce42289b16fde0a1dc2e7dcbea57c9809c3ceba01bd1e5f86a26"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.404.0/tyler_0.404.0_darwin_amd64.tar.gz"
      sha256 "c605a64fb31eb6eddc2da7ea732ec74a1e66cd6efad80580af6b38047594f571"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
