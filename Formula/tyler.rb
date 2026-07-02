class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.603.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.603.0/tyler_0.603.0_darwin_arm64.tar.gz"
      sha256 "30ef7b3543b3ed10d14a9d3edd6fba7587d0584e10d003c9fd953e45ec57154b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.603.0/tyler_0.603.0_darwin_amd64.tar.gz"
      sha256 "b4812d6ff0fa333c81bf73b20b39551fa6656fc215c5ed3e98deb921d10c83bd"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
