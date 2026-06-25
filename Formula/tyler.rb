class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.510.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.510.0/tyler_0.510.0_darwin_arm64.tar.gz"
      sha256 "fb06833da7f6827e7c9b07d008d887b7536f009130638184d559f6a261f8d40a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.510.0/tyler_0.510.0_darwin_amd64.tar.gz"
      sha256 "8560ec33f100a5136ab5ef19cb15d6b87a6e5995b67d4a076a93a8033e1d6124"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
