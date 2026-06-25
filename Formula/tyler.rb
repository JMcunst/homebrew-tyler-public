class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.514.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.514.0/tyler_0.514.0_darwin_arm64.tar.gz"
      sha256 "7247ff7b920959dd85da95134949980652a928ce10873aaf2643df965276ddf8"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.514.0/tyler_0.514.0_darwin_amd64.tar.gz"
      sha256 "3730ebeb22131b44f8cdbe7d8acde736cf3df0c063b5ab4d551c87fab32044c7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
