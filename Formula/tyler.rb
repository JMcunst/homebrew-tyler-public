class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.422.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.422.0/tyler_0.422.0_darwin_arm64.tar.gz"
      sha256 "47ea5f069f445e0bc8c33f4664b5c6f140ae2e951fc5bcdf8855c28f4640ca21"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.422.0/tyler_0.422.0_darwin_amd64.tar.gz"
      sha256 "f95513e74ea7f10140ca2a6c397b3f805f56ecdace76c52ea106a7997b8d5abd"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
