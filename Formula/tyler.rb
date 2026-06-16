class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.381.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.381.0/tyler_0.381.0_darwin_arm64.tar.gz"
      sha256 "893adc532a00717cc9414ae027fec37ed21bd7fe18a85984403021e869ea0943"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.381.0/tyler_0.381.0_darwin_amd64.tar.gz"
      sha256 "6277f4e93fd3f0d36eb52a40ac765b3ba5a99c5f9452950eee70d4374ec77504"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
