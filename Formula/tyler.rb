class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.476.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.476.0/tyler_0.476.0_darwin_arm64.tar.gz"
      sha256 "d3cc8bc3f703623417729ea4b7b68ede44381c96917db93ad1c303f252a6a006"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.476.0/tyler_0.476.0_darwin_amd64.tar.gz"
      sha256 "b5ba4b8adfb63804f590e06968aa8359501f43226a7774d2366f3b7e4772ea35"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
