class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.436.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.436.0/tyler_0.436.0_darwin_arm64.tar.gz"
      sha256 "1f1995fb33897efe7e86f4ca9788d994abdcc134a5c61fda935e1479c3db9a90"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.436.0/tyler_0.436.0_darwin_amd64.tar.gz"
      sha256 "8a7ae3cbc618eebaeed7b05f8e808719b0e00a1cd5f97cfa21e165200e96d14a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
