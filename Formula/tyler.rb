class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.85.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.85.0/tyler_2.85.0_darwin_arm64.tar.gz"
      sha256 "157e70ef3456d4217134db74138d71eac9901eca64421ff20415535903c5a05c"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.85.0/tyler_2.85.0_darwin_amd64.tar.gz"
      sha256 "9744256e6581afc2b10f7fd452492fe6dfdf2ba9408a119c3720bba6157230c5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
