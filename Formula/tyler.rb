class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.400.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.400.0/tyler_0.400.0_darwin_arm64.tar.gz"
      sha256 "d9961ab8dc92202a43fb967ab45c10dbd80efadbc1daa427032b4db1147c0bf4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.400.0/tyler_0.400.0_darwin_amd64.tar.gz"
      sha256 "3c105a70515dbe4250a8305e5db5b4ba375459cfe7d74dffe660c215e93f5464"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
