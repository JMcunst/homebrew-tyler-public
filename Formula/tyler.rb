class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.484.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.484.0/tyler_0.484.0_darwin_arm64.tar.gz"
      sha256 "c63ad0ecd0778e600de45507f9d11823e4e3235a7c656a62bd4606e9b1704aa7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.484.0/tyler_0.484.0_darwin_amd64.tar.gz"
      sha256 "3ef6db4d1f4cd5900294379c3cd17e6c720ec65da19b6f24219acba502853c7b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
