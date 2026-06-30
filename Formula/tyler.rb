class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.588.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.588.0/tyler_0.588.0_darwin_arm64.tar.gz"
      sha256 "9232772886cf6d28e9449de20ab4bbfbdf12a52beca55c8fae5565816f20cfd9"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.588.0/tyler_0.588.0_darwin_amd64.tar.gz"
      sha256 "156c9c1ae991296b5b3db05b3b14b30f58ca6c5cf6e745c2f918b144c9a141b3"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
