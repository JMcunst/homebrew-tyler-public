class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.535.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.535.0/tyler_0.535.0_darwin_arm64.tar.gz"
      sha256 "d0a57bfa8f57e1cfc6252cbb6bb77c19f8957eb6e5bcb88182ebaa5a31d1671a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.535.0/tyler_0.535.0_darwin_amd64.tar.gz"
      sha256 "41137a0ba1b5de8efe6cb192a04699b2885c6788eeaa2267a6c0189fbc9d0040"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
