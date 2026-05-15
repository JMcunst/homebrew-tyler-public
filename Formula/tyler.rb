class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.7.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.7.0/tyler_0.7.0_darwin_arm64.tar.gz"
      sha256 "9a1ffbc0374adb7959c7acad9e607ae0c6d0e7ecf30703a3e6e9c8d08b63e36a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.7.0/tyler_0.7.0_darwin_amd64.tar.gz"
      sha256 "95da06734f3668d2fbd31e7262efee6e52ae07225d17c80f798ce095e694d59a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
