class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.68.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.68.0/tyler_0.68.0_darwin_arm64.tar.gz"
      sha256 "3610a72843bf7e31e28eed071221a8fb349a8af78d70811bcc25154013bdc059"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.68.0/tyler_0.68.0_darwin_amd64.tar.gz"
      sha256 "2ac4ef6c0997f2755948067c21138df5556a0c1a2ee1a175719b85c5f2c5c1c5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
