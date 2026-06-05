class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.224.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.224.0/tyler_0.224.0_darwin_arm64.tar.gz"
      sha256 "1c99b504207030642ebdaa87583f41e4df8a740aa215eb1ff6bdaad77b686eb2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.224.0/tyler_0.224.0_darwin_amd64.tar.gz"
      sha256 "c0353b2b1c25be86296bac091256bde052df35b4822b76a8430889704643192a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
