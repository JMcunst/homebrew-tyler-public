class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.49.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.49.0/tyler_0.49.0_darwin_arm64.tar.gz"
      sha256 "b359a888d059e00ffe3004aabfa3e93cbbba8bba38db7461632b1eee8a55eba6"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.49.0/tyler_0.49.0_darwin_amd64.tar.gz"
      sha256 "f8c62f69897a60acf1e1f3e5dd0a5fcf6387061263e6b975e94d540f02b4903f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
