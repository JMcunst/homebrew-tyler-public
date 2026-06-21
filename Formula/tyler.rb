class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.452.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.452.0/tyler_0.452.0_darwin_arm64.tar.gz"
      sha256 "fe75ee85ac4d186074176b50410bbcfe78380f0cbc156bd0c658360292432100"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.452.0/tyler_0.452.0_darwin_amd64.tar.gz"
      sha256 "3e37b51d0f85a4b9f255db6754538ccd21d92d2df4744080fbddca3f73e03259"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
