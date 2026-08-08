class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.99.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.99.0/tyler_2.99.0_darwin_arm64.tar.gz"
      sha256 "519c1621ca0e573372080eccce9f1da8aa109433e3fcb4e955f768f54f5a15fb"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.99.0/tyler_2.99.0_darwin_amd64.tar.gz"
      sha256 "c2e5fb39cf66866b42b066d02f30a62141be9e7f5a210de7c186b807da44687b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
