class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.65.3"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.65.3/tyler_0.65.3_darwin_arm64.tar.gz"
      sha256 "f81844f7eb9591b3fa71cffc2322617ea427919d3d507819475d4bf26ba95ec1"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.65.3/tyler_0.65.3_darwin_amd64.tar.gz"
      sha256 "8f23932689cf01919b0bf5b83be72e02660b090bd4ba4206026350d2f9403923"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
