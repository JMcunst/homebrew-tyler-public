class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.251.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.251.0/tyler_0.251.0_darwin_arm64.tar.gz"
      sha256 "452d629b4bdea8bfb6db217133d872f8e78f5da42fdf85efc500d2c160d93a45"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.251.0/tyler_0.251.0_darwin_amd64.tar.gz"
      sha256 "778bd85654a4378766b579db4a4e6517d45c353639538b125cb09536f0919e61"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
