class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.10.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.10.1/tyler_0.10.1_darwin_arm64.tar.gz"
      sha256 "b3862aed08fb4371c9470d745b404b29743107a0ad7a1f081b22f43ace924a7f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.10.1/tyler_0.10.1_darwin_amd64.tar.gz"
      sha256 "4e170b1b71ce75820bc6cd283755a5fbc5485f33465da8a4f2d83c5fbc7c6f36"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
