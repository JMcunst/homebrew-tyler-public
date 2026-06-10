class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.260.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.260.0/tyler_0.260.0_darwin_arm64.tar.gz"
      sha256 "b392f11a4fd62c22c9b271c2de062e023fc1d316fcf1c86fca0baa5af34819c5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.260.0/tyler_0.260.0_darwin_amd64.tar.gz"
      sha256 "730ffe18a97520d01f305b657a0538a75305288ef96d2d2f9c5fe280536ea0bd"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
