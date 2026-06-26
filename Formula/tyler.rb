class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.538.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.538.0/tyler_0.538.0_darwin_arm64.tar.gz"
      sha256 "bad765a2e0b7a9c5b9cadeb7bfee7cfd07b13910d4d7ebef94f8c36e56ea725d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.538.0/tyler_0.538.0_darwin_amd64.tar.gz"
      sha256 "c07c0c29b1ba721f9db09e4b2a1fb37b12527f8877de5b3e30af76989512f3bf"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
