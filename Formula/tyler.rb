class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.23.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.23.0/tyler_0.23.0_darwin_arm64.tar.gz"
      sha256 "6a1356c4e7a76cdbd11484009003c0d5a866446f362ab1bc0b452a3134060ca6"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.23.0/tyler_0.23.0_darwin_amd64.tar.gz"
      sha256 "cc770ef9059ee377c8fa6482505d6c0f2903bc3b83f47cbc2fcdeb9ddca65767"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
