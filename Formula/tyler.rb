class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.221.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.221.0/tyler_0.221.0_darwin_arm64.tar.gz"
      sha256 "1da12ea9e7371f91eb105d8d12b1f172eecf3ac82bc9bcc848cf07131ff528f7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.221.0/tyler_0.221.0_darwin_amd64.tar.gz"
      sha256 "d3b03ebf51006837da26d4813812de0e4100ad0958d0557ee94e2855a2d6b538"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
