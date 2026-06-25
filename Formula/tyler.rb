class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.519.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.519.0/tyler_0.519.0_darwin_arm64.tar.gz"
      sha256 "f63547bae32b468448fa6be18b259e9ff990f0b485ec9f12a7abdae9d65fa40b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.519.0/tyler_0.519.0_darwin_amd64.tar.gz"
      sha256 "9c81b86f447fb1f5c73fd88068e0225d4f960ad3834f001a3b7bfaef9f430613"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
