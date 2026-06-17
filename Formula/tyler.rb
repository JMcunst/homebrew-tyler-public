class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.407.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.407.0/tyler_0.407.0_darwin_arm64.tar.gz"
      sha256 "331c360fb5f416f93c13ca8e20eb86e1801d13e4ad9069c86c72365e2e91bbe0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.407.0/tyler_0.407.0_darwin_amd64.tar.gz"
      sha256 "cd8b14324d2a52311fb0ad04b7bbb92ed7fd063602b33af3a4503be342ea8f16"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
