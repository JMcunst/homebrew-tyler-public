class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.62.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.62.0/tyler_0.62.0_darwin_arm64.tar.gz"
      sha256 "58b4131650bbc10ba65b2595027fd3caa09216eda9d4faf2e487b95a81ccbc5b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.62.0/tyler_0.62.0_darwin_amd64.tar.gz"
      sha256 "7653f212c27816790536883086c7c0d70ebf19a550fd6cef6196094097d62b70"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
