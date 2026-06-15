class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.352.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.352.0/tyler_0.352.0_darwin_arm64.tar.gz"
      sha256 "de993ae0544f1b26e69f786e5fb143d74b8c174b911aceceeadeb4b4d507f28a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.352.0/tyler_0.352.0_darwin_amd64.tar.gz"
      sha256 "07d07b66b0ffc65b9530ccaa0b3ba9212d8e3f8ec4501f1b3d0472614c1e1e0c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
