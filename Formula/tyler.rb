class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.370.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.370.0/tyler_0.370.0_darwin_arm64.tar.gz"
      sha256 "537033a3caf17a61462f1ff129548a280f408f1591225c7407e609b97fe90268"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.370.0/tyler_0.370.0_darwin_amd64.tar.gz"
      sha256 "76b3371c928c5c619e8e68aec5e0aedc00c3272e7cd53313bd11ca69090d20f1"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
