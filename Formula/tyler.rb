class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.420.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.420.0/tyler_0.420.0_darwin_arm64.tar.gz"
      sha256 "dcb74807fcc9abf90f0b0a854151a0bced32cdaf56f87f0974be6d7a4ad22c3c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.420.0/tyler_0.420.0_darwin_amd64.tar.gz"
      sha256 "51c15bfe3ff588013e5d69b36f15533f5de50ee307dcc5af436848b04ee8e53b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
