class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.440.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.440.0/tyler_0.440.0_darwin_arm64.tar.gz"
      sha256 "8846428b1c56cc8a0fce0ccb4ef3f39f2de08d5cde5ae3fd363d4c52a7cb8178"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.440.0/tyler_0.440.0_darwin_amd64.tar.gz"
      sha256 "f64875eab36b637d0bf1120d51e85f22454772e1a2266fb177300fc7a600f0e9"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
