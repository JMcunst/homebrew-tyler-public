class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.184.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.184.0/tyler_0.184.0_darwin_arm64.tar.gz"
      sha256 "39a9c35e807475b3726699c842f20e9f0028dd3ca7956a5a771fe24cd0fa0aea"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.184.0/tyler_0.184.0_darwin_amd64.tar.gz"
      sha256 "2c9090df70ad4833f89dbca5cfc494338bc8dd9164380496f4961037e73404cf"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
