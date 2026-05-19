class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.27.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.27.0/tyler_0.27.0_darwin_arm64.tar.gz"
      sha256 "8e361ddc4d5968c816dbdfd6141cdc44879dff97c3c8a9f2fc79d8775c7c5db1"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.27.0/tyler_0.27.0_darwin_amd64.tar.gz"
      sha256 "e5fd07961ef09a14083fadd111cd1cf7800d28ab16dc337513a01f67b996a1b1"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
