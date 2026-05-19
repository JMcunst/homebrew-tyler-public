class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.22.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.22.0/tyler_0.22.0_darwin_arm64.tar.gz"
      sha256 "4ea5ab614986fccf62a653ba96b7e0005b6ddd3925bb5f6f12489ebf115588c3"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.22.0/tyler_0.22.0_darwin_amd64.tar.gz"
      sha256 "15219950a5e0281c0a45f265e67be260f0d2703b83fe5b68ac4a03bcca8dd4a2"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
