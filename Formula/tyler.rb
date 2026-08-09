class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.103.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.103.0/tyler_2.103.0_darwin_arm64.tar.gz"
      sha256 "7c7ee224b93069fa41d190a84f9905a16ff8f5d9b7af03273fcf34026d9eed06"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.103.0/tyler_2.103.0_darwin_amd64.tar.gz"
      sha256 "8bb5bba5c2877c97b67e4266fd1ab95a9c1f3e4b8ba6c82e69f4ec760c70e220"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
