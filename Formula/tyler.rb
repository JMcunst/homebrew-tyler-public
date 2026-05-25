class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.36.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.36.0/tyler_0.36.0_darwin_arm64.tar.gz"
      sha256 "0222a1af6a9c810f15b13b82ebd09260099ba8d24eda360b8d8dda10daeba0d5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.36.0/tyler_0.36.0_darwin_amd64.tar.gz"
      sha256 "0aa1267c8d6d5a7cb910c9f7ccc6b73b25cfe19d3e9f67f18cb2c024b3d9a5a4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
