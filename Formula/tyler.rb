class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.63.2"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.63.2/tyler_0.63.2_darwin_arm64.tar.gz"
      sha256 "ff8e8627efc7a678eec0a34e1f66937f6c63a0093b606c1d818e98ad2377c1fc"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.63.2/tyler_0.63.2_darwin_amd64.tar.gz"
      sha256 "3d090c235ded19846b053f8c44ebda1e50eedf48b5a06b17d0f0fe9a8ea8c07b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
