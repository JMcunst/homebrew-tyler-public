class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.147.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.147.0/tyler_0.147.0_darwin_arm64.tar.gz"
      sha256 "c6dd509c9bb8e9d37a4c14999a923b2652161174ee48aba9165d7409e57e7bae"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.147.0/tyler_0.147.0_darwin_amd64.tar.gz"
      sha256 "6ca99505f005a8369beca5187c27e634150532afa9e6e43008d6bc5c8aff7efa"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
