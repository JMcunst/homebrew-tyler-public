class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.470.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.470.0/tyler_0.470.0_darwin_arm64.tar.gz"
      sha256 "895d70b68d241b3f4d3116b0e6d3e278f6b41f00fde0ccf49a13a66e7f06978a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.470.0/tyler_0.470.0_darwin_amd64.tar.gz"
      sha256 "167fed6c8ac0641476b506fc883aa858f93098eed681961e0c54640ff24b3058"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
