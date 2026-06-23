class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.490.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.490.0/tyler_0.490.0_darwin_arm64.tar.gz"
      sha256 "cb599bfe48ae4444dce83303bf16bd8dc9a50e57bba3ac6ac1b9d8fea229fb64"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.490.0/tyler_0.490.0_darwin_amd64.tar.gz"
      sha256 "e5c6c311f7fe856fc441b0f9c01cade77cf0659e6fec2858af38819fbeba4508"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
