class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.153.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.153.0/tyler_0.153.0_darwin_arm64.tar.gz"
      sha256 "0f2f8ac9527e006efa7f63ed1fe0047f267aa9e8259250d2461fadf207690bf6"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.153.0/tyler_0.153.0_darwin_amd64.tar.gz"
      sha256 "c5cdab836c828b6dd74bf569f196072ef674eb56f46a2796704346ee24570b16"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
