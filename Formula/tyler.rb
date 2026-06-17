class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.416.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.416.0/tyler_0.416.0_darwin_arm64.tar.gz"
      sha256 "0816ecf696ae1f69a552301e4a1e982e89ca5e6cba08b9b7576524a131778f03"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.416.0/tyler_0.416.0_darwin_amd64.tar.gz"
      sha256 "c7263c8d3201ce2ef977d40645b1cdd4dbf6e23ce0555dfd635ae768d310b556"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
