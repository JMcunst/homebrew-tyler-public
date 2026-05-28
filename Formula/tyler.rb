class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.76.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.76.0/tyler_0.76.0_darwin_arm64.tar.gz"
      sha256 "144afe25304e1d2d18a0c0d1c1d070b0029ae65d6f1afe3bdef44441f4129d2c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.76.0/tyler_0.76.0_darwin_amd64.tar.gz"
      sha256 "4105464b9845ed8f7345a21110b118d94e01d2e5754f271013ff2192647a93be"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
