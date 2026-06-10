class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.261.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.261.0/tyler_0.261.0_darwin_arm64.tar.gz"
      sha256 "c968abc3bda0519676ed26e74e2649b1b3402c0672c5c6ee09f45b8eda023b15"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.261.0/tyler_0.261.0_darwin_amd64.tar.gz"
      sha256 "c477fd37b44853dc420375a011441791c7b8c68337720eb571eecd91526a0c7a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
