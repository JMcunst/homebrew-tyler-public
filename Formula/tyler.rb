class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.573.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.573.0/tyler_0.573.0_darwin_arm64.tar.gz"
      sha256 "d8a1301f4284c5e5f79a1ec407d6530b1878103315ec31bd4f2c8a4f4ee0b57e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.573.0/tyler_0.573.0_darwin_amd64.tar.gz"
      sha256 "c39b0c36557a0600d1352a5ebd565b263c40214f8938e2fe288646677c8f584a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
