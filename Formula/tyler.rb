class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.110.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.110.0/tyler_0.110.0_darwin_arm64.tar.gz"
      sha256 "02fda87e02537752fcbca2256a09f153e4a936e11337a14f967d74f636269f5c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.110.0/tyler_0.110.0_darwin_amd64.tar.gz"
      sha256 "073a1d56e8f00f24b6221d650ed9dd839ce65b9c6cb13de21a606e0e036c2a20"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
