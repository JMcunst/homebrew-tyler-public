class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.395.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.395.0/tyler_0.395.0_darwin_arm64.tar.gz"
      sha256 "000844eb5ae462fa7d8deb185049c212a7738145226c4519bd5260a4799582e7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.395.0/tyler_0.395.0_darwin_amd64.tar.gz"
      sha256 "61e9ba12dbb7291e597fcfd1165678ea5b9e0ed849a529bb64d28cb9da313da3"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
