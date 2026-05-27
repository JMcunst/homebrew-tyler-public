class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.61.2"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.61.2/tyler_0.61.2_darwin_arm64.tar.gz"
      sha256 "fc10c01d74fb0927cbdf9137d05bc3eaa3e895a29f569435bdde72a2b4cc44bb"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.61.2/tyler_0.61.2_darwin_amd64.tar.gz"
      sha256 "66db4fda79cfd298817e1044cb846d0e5b36bcb7043bad72f72809ae5b688325"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
