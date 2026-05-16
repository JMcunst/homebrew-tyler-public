class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.1/tyler_0.3.1_darwin_arm64.tar.gz"
      sha256 "886dc9bf2a9f8905bd62d8f4d292129b98ebd8e33e07f0e7602971eb11e71bf1"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.1/tyler_0.3.1_darwin_amd64.tar.gz"
      sha256 "2bf8be6f7b23a71306dfb56881b49954272110b9f584051ac5882d0f201f94fc"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
