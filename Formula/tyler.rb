class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.132.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.132.0/tyler_0.132.0_darwin_arm64.tar.gz"
      sha256 "ff6fcfc05b4add49b9e58a435172ce5ff497fbabcec84ed20872b1847c1b9737"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.132.0/tyler_0.132.0_darwin_amd64.tar.gz"
      sha256 "fd3166f0c60032ae8b70b19e48ef3907d33194a17c2243e3809c7c6bbc9d5f5c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
