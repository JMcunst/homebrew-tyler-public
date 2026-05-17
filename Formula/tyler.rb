class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.9.9"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.9/tyler_0.9.9_darwin_arm64.tar.gz"
      sha256 "d9e572ec18bfe34442b28826ae7271562e34371b10f5c93c6ab66c343fbeb3e3"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.9/tyler_0.9.9_darwin_amd64.tar.gz"
      sha256 "3a48d6b214e00c8290961175813799fe6a5750df5e020a3798ef4d1015f74117"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
