class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.38.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.38.0/tyler_0.38.0_darwin_arm64.tar.gz"
      sha256 "95cca869a5b1da474f96813b8d2c211d9a892366508f688541de3e073fd06494"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.38.0/tyler_0.38.0_darwin_amd64.tar.gz"
      sha256 "dcc61cee1e213f41bb3d44aac0e9657167ee8e6e687b6b5d7ed762a1871134f8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
