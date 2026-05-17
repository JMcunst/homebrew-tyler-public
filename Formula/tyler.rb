class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.9.7"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.7/tyler_0.9.7_darwin_arm64.tar.gz"
      sha256 "29c4edd180ea29ea3b349a31998e1bc41427a1fbf65838ba8f9e5de93bb3d746"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.7/tyler_0.9.7_darwin_amd64.tar.gz"
      sha256 "942e12d3904ba6feb8ab9612b14612ebd53b1dbf643605f6fe0debeb38970727"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
