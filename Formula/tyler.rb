class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.151.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.151.0/tyler_0.151.0_darwin_arm64.tar.gz"
      sha256 "9814f176198de79c7c3f81a61ab8743be1725b0177c481a96d634f8a944ea8c1"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.151.0/tyler_0.151.0_darwin_amd64.tar.gz"
      sha256 "6c74893296d2602b603b7de6a545c4a386f7feb6247839d72fa15eedd4ba5177"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
