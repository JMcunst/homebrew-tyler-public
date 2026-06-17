class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.406.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.406.0/tyler_0.406.0_darwin_arm64.tar.gz"
      sha256 "54f06d3cd32f67a68f7a958f1e38a45a176ffb607aee4653bcd697c8a1767a60"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.406.0/tyler_0.406.0_darwin_amd64.tar.gz"
      sha256 "fcd00c0ae7a98e3e031c933c0512981f327f63acb49e321e093b33afff4b94c3"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
