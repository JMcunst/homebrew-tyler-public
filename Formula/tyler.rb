class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.142.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.142.0/tyler_0.142.0_darwin_arm64.tar.gz"
      sha256 "1ac905bb2772674063632360069968aed4c7633e9f6521f4f4ec80e55ea631be"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.142.0/tyler_0.142.0_darwin_amd64.tar.gz"
      sha256 "e967bc3b7adf5e0c78e27ae42784efb91355cabd7af896e076d47a50a02ee76b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
