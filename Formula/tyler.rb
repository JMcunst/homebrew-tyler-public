class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.424.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.424.0/tyler_0.424.0_darwin_arm64.tar.gz"
      sha256 "996959df138b71ec87d587dd44535c221e9b2428e1f7c0ca305b8e79cccd9080"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.424.0/tyler_0.424.0_darwin_amd64.tar.gz"
      sha256 "36a6c2b8f1aa8c4534ca77b00243ad233d0565fc65248bba84e873f2e59efe04"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
