class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.472.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.472.0/tyler_0.472.0_darwin_arm64.tar.gz"
      sha256 "e4c1715ec1d87e401ad056166bddbc94e758ca0d28bb59ecb25d36b55ea31772"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.472.0/tyler_0.472.0_darwin_amd64.tar.gz"
      sha256 "af92f645404bac2273a8b91ba64a5ce37f5d796c18566c52a173671ff4be9b4f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
