class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.239.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.239.0/tyler_0.239.0_darwin_arm64.tar.gz"
      sha256 "5299089f259aee1846ebdc41020a2120837500bfda5c5050ff8704e34a591837"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.239.0/tyler_0.239.0_darwin_amd64.tar.gz"
      sha256 "c74f60f902798850ff6f49b7b7dfe81239c3103998c9250b2a5653ed04920bcd"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
