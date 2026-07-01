class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.594.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.594.0/tyler_0.594.0_darwin_arm64.tar.gz"
      sha256 "a54a26ec5bfea0a1ee8cb0388b99cbf7e5748f08699765aed7a0895411c0cb9c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.594.0/tyler_0.594.0_darwin_amd64.tar.gz"
      sha256 "46512cada0817c763fa18730b7ada3bedda1fc2dddaa05cc9af45e7b590ac3f2"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
