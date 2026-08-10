class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.113.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.113.0/tyler_2.113.0_darwin_arm64.tar.gz"
      sha256 "008b7855b9ddc9b618c97976af15ad351e26438b816fed9c947663ef1d719f68"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.113.0/tyler_2.113.0_darwin_amd64.tar.gz"
      sha256 "77878d2e80414f0abdca280b057271606db4bd83cd26d45cc81e7b6e7591c041"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
