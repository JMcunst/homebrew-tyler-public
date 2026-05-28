class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.72.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.72.0/tyler_0.72.0_darwin_arm64.tar.gz"
      sha256 "4d714ae8d09cb5d4e9e3c901e6a8ef3db55d062463aec8fb6abd4f53769d56a0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.72.0/tyler_0.72.0_darwin_amd64.tar.gz"
      sha256 "0890b51355b0755b40607fcdfc6b845d5bb5aa73d384cb5a6a64a0e84ad2d3d9"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
