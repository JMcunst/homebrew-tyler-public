class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.87.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.87.0/tyler_0.87.0_darwin_arm64.tar.gz"
      sha256 "881bbda3b400f2bf62f087a7970fdad1c8aff1959f7c0c0b76ad724446965d53"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.87.0/tyler_0.87.0_darwin_amd64.tar.gz"
      sha256 "992449437a523e0297d025f6140d3882fa3135d8836dda13afd938eb005a46c5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
