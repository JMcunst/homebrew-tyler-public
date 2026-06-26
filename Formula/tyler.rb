class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.552.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.552.0/tyler_0.552.0_darwin_arm64.tar.gz"
      sha256 "5ee9f5a6001e8cbb6d084fdb1662285f8a32b2d069267b870804d40b9d4d8ef7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.552.0/tyler_0.552.0_darwin_amd64.tar.gz"
      sha256 "d7fa8fe30de04a6ebaaab0f6c07f41519b2d2c5fff036870c0cf550b9930680f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
