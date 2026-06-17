class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.403.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.403.0/tyler_0.403.0_darwin_arm64.tar.gz"
      sha256 "6ea989840a1f0beeea114b063b231190d3fbcc9a32926c40679cbdb00cd45bc3"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.403.0/tyler_0.403.0_darwin_amd64.tar.gz"
      sha256 "945b9a2ddc8f74c9822521a31bf55ef54ad68d6ae8f8a865315dca2ffee193c0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
