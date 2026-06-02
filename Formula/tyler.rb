class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.161.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.161.0/tyler_0.161.0_darwin_arm64.tar.gz"
      sha256 "3c74b15800156d371cf8bd06b6bff590fd01fcbbfb98439d42f26de66ae807e6"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.161.0/tyler_0.161.0_darwin_amd64.tar.gz"
      sha256 "14f8d75f55678d46adcc4dc2adebc10af09c3032bee8cb8d6e0d379b53f72b99"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
