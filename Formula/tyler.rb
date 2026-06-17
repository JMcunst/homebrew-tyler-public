class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.394.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.394.0/tyler_0.394.0_darwin_arm64.tar.gz"
      sha256 "7a04064a85e659b50b4b94c311d2f1ad6192559fb258fcff2fbf856fac52b627"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.394.0/tyler_0.394.0_darwin_amd64.tar.gz"
      sha256 "de8f0790c3f85b4f04caf33d4c3ea801d08cd519cf826c76726e619cc3564c55"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
