class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.5.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.5.1/tyler_0.5.1_darwin_arm64.tar.gz"
      sha256 "34d80cc4ae4c3752cd2dc3b9237cf20b54b5f9fe2bde39b0cda22bad7f06424e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.5.1/tyler_0.5.1_darwin_amd64.tar.gz"
      sha256 "dc432795fba633a2f894388b03a72aa67164bd84182cf8ed36b50650c556b1e7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
