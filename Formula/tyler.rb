class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.455.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.455.0/tyler_0.455.0_darwin_arm64.tar.gz"
      sha256 "392f8004c0bc6c83b6af557b7b0d61fbce61353b556cd0091f6a21d6b1f76627"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.455.0/tyler_0.455.0_darwin_amd64.tar.gz"
      sha256 "b58651b0bad960703762ebce09e5b3205544173757feab36521b1ff980baf9f5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
