class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.241.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.241.0/tyler_0.241.0_darwin_arm64.tar.gz"
      sha256 "bd3b92d1eae99da82349aae4a26574f7a9714d709f9ff979a52f9d63218540e7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.241.0/tyler_0.241.0_darwin_amd64.tar.gz"
      sha256 "7a4e1e13c140c784479dacea4cdb044b550c1cd82cdc0819d74344b0e029bb00"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
