class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.254.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.254.0/tyler_0.254.0_darwin_arm64.tar.gz"
      sha256 "1991c1b08e7cd36a26dbff701836b7618bd8a6bde2ba78a13833de2158893570"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.254.0/tyler_0.254.0_darwin_amd64.tar.gz"
      sha256 "534544d57fb83ce3ffce84a0512bfd739d78ca5576dfdf536890f826b963dda5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
