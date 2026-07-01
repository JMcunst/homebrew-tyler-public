class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.597.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.597.0/tyler_0.597.0_darwin_arm64.tar.gz"
      sha256 "4be0daf1ae7d819618097f3beec6cf458a1700930944db438fa7b45ffbd0e2dc"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.597.0/tyler_0.597.0_darwin_amd64.tar.gz"
      sha256 "d2e74695533cb23ad0461099701cf521b8052506ddd3ca7e59f061ae9fdbe4b4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
