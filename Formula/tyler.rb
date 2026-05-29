class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.80.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.80.0/tyler_0.80.0_darwin_arm64.tar.gz"
      sha256 "faaa1d341e882ce45198a27b3242f3ffcbbf1f3c1dbf1fb62e9cf12e5a95e0e2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.80.0/tyler_0.80.0_darwin_amd64.tar.gz"
      sha256 "ee16f3933871005830863820d94543df79a7a48dbc8ea44f9f3ba85cfb742c90"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
