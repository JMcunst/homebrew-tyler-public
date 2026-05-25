class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.32.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.32.0/tyler_0.32.0_darwin_arm64.tar.gz"
      sha256 "20972bdc4afb2b7b37905bd554fe601035d55732a748808518c852e224b4a1f9"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.32.0/tyler_0.32.0_darwin_amd64.tar.gz"
      sha256 "fcfc8d60be881883be2499b567e7a57074d9b40cee753aa8e6866339e6b1b88c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
