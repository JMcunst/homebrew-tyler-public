class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.111.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.111.0/tyler_2.111.0_darwin_arm64.tar.gz"
      sha256 "f09f7e529997947b46110c9f35d2b13cf20c033f587c607d8f7d140388fa7cf6"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.111.0/tyler_2.111.0_darwin_amd64.tar.gz"
      sha256 "b2f83fe1d13e4cd7e6fd9e7d5629889bbb5024cf97d8faea1af515d320935cd7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
