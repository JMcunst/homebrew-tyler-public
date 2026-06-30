class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.589.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.589.0/tyler_0.589.0_darwin_arm64.tar.gz"
      sha256 "cdb2643cd32c0ca51f0cb9c9c65eef357260109c6a1a12ccee92021af4c0073e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.589.0/tyler_0.589.0_darwin_amd64.tar.gz"
      sha256 "68f09f7a365e86c98f1e45f1b8c8ee826022f189e11ecfbeacc478f49e339123"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
