class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.133.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.133.0/tyler_0.133.0_darwin_arm64.tar.gz"
      sha256 "5324186acc80017b13c236badfcb10b74731face7745f71b25ef9592dfcd3b55"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.133.0/tyler_0.133.0_darwin_amd64.tar.gz"
      sha256 "b9d0674ddcfa749501a673e5c70790f66ee4af31965728ad93f6ce08872941a0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
