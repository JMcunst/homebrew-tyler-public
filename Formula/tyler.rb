class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.205.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.205.0/tyler_0.205.0_darwin_arm64.tar.gz"
      sha256 "d7a189960d0d2b21fc44844305b8d0b6f553823cf8f66b6f2add63aa994d9199"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.205.0/tyler_0.205.0_darwin_amd64.tar.gz"
      sha256 "26f797f79645455076c4f6b1e7580c1bcdd594da7836f6bbb18bd4de50959c32"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
