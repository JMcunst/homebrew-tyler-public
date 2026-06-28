class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.572.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.572.1/tyler_0.572.1_darwin_arm64.tar.gz"
      sha256 "6e402554e846b5036f01da5f4ef4ce152c1ea399322859c8340737c190cc8c57"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.572.1/tyler_0.572.1_darwin_amd64.tar.gz"
      sha256 "eaadcf4d9d5897037fd3916263b49045b48fcc40ce732eada33ad35a934cd092"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
