class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.123.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.123.0/tyler_0.123.0_darwin_arm64.tar.gz"
      sha256 "8d8bb04a66b732aaa59499fa84866833c7dee133230556920f027f064df274c7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.123.0/tyler_0.123.0_darwin_amd64.tar.gz"
      sha256 "c60eb0697b43bda07dcfb04667285b9e1e46f2bd4014695fb5e7a37e5f8c3cd5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
