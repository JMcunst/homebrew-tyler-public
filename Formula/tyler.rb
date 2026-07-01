class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.593.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.593.0/tyler_0.593.0_darwin_arm64.tar.gz"
      sha256 "3891aa6573befb6d163ac5a78b80d560aea2b7d06ceef7886c8c636a2ab24daa"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.593.0/tyler_0.593.0_darwin_amd64.tar.gz"
      sha256 "97deb10fda2ebb3b22bf2334d5484ad6307a9095157ae6ae82a8bc12a5804c3f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
