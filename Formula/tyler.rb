class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.591.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.591.0/tyler_0.591.0_darwin_arm64.tar.gz"
      sha256 "b94ed60b409ab1a551967d9f79a3b6a8698e3e3299a0a44f4cf44d40acaa0b8c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.591.0/tyler_0.591.0_darwin_amd64.tar.gz"
      sha256 "5bab53ecad83c924e67fb031533fcbd7b8695af639303ca357595aa8a5c268f6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
