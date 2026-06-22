class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.474.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.474.0/tyler_0.474.0_darwin_arm64.tar.gz"
      sha256 "7b529a05d6a4707b8fb5d97cc91078f0d6fc850bafe99b7b0358d37926b4b124"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.474.0/tyler_0.474.0_darwin_amd64.tar.gz"
      sha256 "d212c742702efb78526dea71c4601f2a5986f63f03a73e8d96e15da9c09b66a0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
