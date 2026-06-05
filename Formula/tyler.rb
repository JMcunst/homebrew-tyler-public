class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.238.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.238.0/tyler_0.238.0_darwin_arm64.tar.gz"
      sha256 "ce8a7ef6a88cc2a76f26c01a1340948415ab9a14b194195fef8ca573a8287ecd"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.238.0/tyler_0.238.0_darwin_amd64.tar.gz"
      sha256 "aa8b195271f7941c240d0c66aa3e2f1eb0b07685cb2e01c8269037655d76b277"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
