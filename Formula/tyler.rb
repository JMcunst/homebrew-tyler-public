class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.236.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.236.0/tyler_0.236.0_darwin_arm64.tar.gz"
      sha256 "1290a7d2bec347d2853781d8ef456b5bfa2b11427b5f7db13a4f28cc72d45d96"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.236.0/tyler_0.236.0_darwin_amd64.tar.gz"
      sha256 "da33115c2cbe65dda8bf94962152498a2d56332a5d75e0a430b6efd710f16cd8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
