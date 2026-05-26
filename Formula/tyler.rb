class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.53.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.53.0/tyler_0.53.0_darwin_arm64.tar.gz"
      sha256 "574ec7a517ca255ced17b33f036c3569f787673dd47fb8e743901284191f9239"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.53.0/tyler_0.53.0_darwin_amd64.tar.gz"
      sha256 "4b0ebd00ab3e10166f995693faba1620086ea4f9563665f57057c7420ba3dba1"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
