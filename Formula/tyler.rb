class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.242.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.242.0/tyler_0.242.0_darwin_arm64.tar.gz"
      sha256 "d2f1c6b65cbd8badb4298a2c684b2831424f94c4c27fc73c6d5604b002deeaea"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.242.0/tyler_0.242.0_darwin_amd64.tar.gz"
      sha256 "9b95ec8a4817565e3b5be73caa7231d4fdf89d3efe68d42c0d2af4e3107ec367"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
