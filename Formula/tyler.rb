class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.94.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.94.0/tyler_2.94.0_darwin_arm64.tar.gz"
      sha256 "b15809896cf9244647274ef71dcca6ca08d1f1068689630ca0740cedd0d11c00"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.94.0/tyler_2.94.0_darwin_amd64.tar.gz"
      sha256 "a664c6b712cbbaecfcf16e559eb83c9cc1b5c19bc70e0ed4142c17dfc933439f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
