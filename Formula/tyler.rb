class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.504.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.504.0/tyler_0.504.0_darwin_arm64.tar.gz"
      sha256 "dd6a1e33d60107aeb3e5f8c895de28c1755dba7ba995dc78d7185b4aee5f9f3a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.504.0/tyler_0.504.0_darwin_amd64.tar.gz"
      sha256 "f7b1522cb95e03a14b02498c704f0f79a63b8fa78fb83ade2bd8a4f9aa9db601"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
