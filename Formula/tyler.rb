class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.175.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.175.0/tyler_0.175.0_darwin_arm64.tar.gz"
      sha256 "90e3c7cffa670bdcb948de84f333b1cc765068fbaf189b9ef5c2f4974643ba5f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.175.0/tyler_0.175.0_darwin_amd64.tar.gz"
      sha256 "a43ef1f87169c7c49b67248409eb5beeb91f7fc20e018aa0410ec3a27317109b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
