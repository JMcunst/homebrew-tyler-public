class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.579.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.579.0/tyler_0.579.0_darwin_arm64.tar.gz"
      sha256 "4bf095eb387e2316ed33edf07e9bc25d445d957722fbaea797da9a3bbaebc7ff"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.579.0/tyler_0.579.0_darwin_amd64.tar.gz"
      sha256 "712f4ec43b361392c711224af135625de08124c39b383a81e3adbf9f24f9d1dc"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
