class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.190.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.190.0/tyler_0.190.0_darwin_arm64.tar.gz"
      sha256 "69dc0f2401a4c03a8a220be7337f64a8035e0c820e14aef94e6a15821e5d88a7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.190.0/tyler_0.190.0_darwin_amd64.tar.gz"
      sha256 "cd3bf7b5358d090a2be7c67510bad80ce38dd8784f26d6b2b82c109863a6d3f8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
