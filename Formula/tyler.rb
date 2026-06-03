class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.182.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.182.0/tyler_0.182.0_darwin_arm64.tar.gz"
      sha256 "ecae668f6d563e1cd2e206e8114bb12896f4f9bf5ceb6beeb9094b4a3ec4b164"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.182.0/tyler_0.182.0_darwin_amd64.tar.gz"
      sha256 "7d0084725593352a095e4412c12317ba906bd17913e960272280bf49ebfbaef7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
