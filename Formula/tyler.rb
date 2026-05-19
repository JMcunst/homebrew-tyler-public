class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.24.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.24.0/tyler_0.24.0_darwin_arm64.tar.gz"
      sha256 "09fe9be7a3566ad9e7fd6bec000f80524f39dcbd45813fda5d50f8568aed1237"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.24.0/tyler_0.24.0_darwin_amd64.tar.gz"
      sha256 "476d75636079f840d4051647a593c25620b0b8f0ac8df0ff4fb3866b6606aeac"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
