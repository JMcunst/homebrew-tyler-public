class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.61.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.61.0/tyler_0.61.0_darwin_arm64.tar.gz"
      sha256 "41841e9ba40857401010c99742d79a0356306f20a2e3e509e22a9cf62f227061"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.61.0/tyler_0.61.0_darwin_amd64.tar.gz"
      sha256 "ef141935176f84e02eb12021a6dfee417a678e44750a241b7957d2029de0d4e4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
