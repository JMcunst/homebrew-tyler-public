class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.141.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.141.0/tyler_0.141.0_darwin_arm64.tar.gz"
      sha256 "5cb68dc37975d3c2e0c0e4279a371857c52b75314152ca82f21deb08ee0512f7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.141.0/tyler_0.141.0_darwin_amd64.tar.gz"
      sha256 "6c9f4207d89176ccd067a3500829dace88a8a230786fad6f8c745e95b8bcf15d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
