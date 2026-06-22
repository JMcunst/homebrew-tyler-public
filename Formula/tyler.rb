class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.473.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.473.0/tyler_0.473.0_darwin_arm64.tar.gz"
      sha256 "1d13c6c5a4412f21ece12db126ad254b560bb18580da05b4e83cb62ac7f2a206"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.473.0/tyler_0.473.0_darwin_amd64.tar.gz"
      sha256 "97196e8ffd8edeab11bf79f89d22c72241510bc4e3df409314f2906a3dc5ee33"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
