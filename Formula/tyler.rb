class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.411.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.411.0/tyler_0.411.0_darwin_arm64.tar.gz"
      sha256 "a3ff3b1195ec5ecc8c1ed023f4b4857b9381bcacbceba840346b98de5377b060"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.411.0/tyler_0.411.0_darwin_amd64.tar.gz"
      sha256 "7a4fa08fc94df0b63342b67893d9fba7215b3076ed812edba254d1c3c2e67b93"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
