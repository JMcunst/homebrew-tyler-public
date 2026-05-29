class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.93.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.93.0/tyler_0.93.0_darwin_arm64.tar.gz"
      sha256 "a06d48231ef5c162ec08ea3112fbc771eb383d730189e06f1a3b57d4e74f806e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.93.0/tyler_0.93.0_darwin_amd64.tar.gz"
      sha256 "70ffb0feb03a1859128a3c035baf7e25d304d3bd1d34bb139071a53b141e046e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
