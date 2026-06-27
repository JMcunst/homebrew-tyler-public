class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.553.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.553.0/tyler_0.553.0_darwin_arm64.tar.gz"
      sha256 "5b7463cb2645a3ac85ac59a3b6c462269bf31fe63ee3ff8972019eae286b875d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.553.0/tyler_0.553.0_darwin_amd64.tar.gz"
      sha256 "bd8feaff5f0064e1b4c714b466cc888d9b4ddb1aa1bfd9e57291969ee53565e6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
