class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.529.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.529.0/tyler_0.529.0_darwin_arm64.tar.gz"
      sha256 "b102688a9c9afc757bac075083b3557e2e9d0e6e9330eac4b6560ded49b800f5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.529.0/tyler_0.529.0_darwin_amd64.tar.gz"
      sha256 "ac228de9ecd30dc249d790fc39b8c402771dd9534db9b20ec65b88c68ce69d89"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
