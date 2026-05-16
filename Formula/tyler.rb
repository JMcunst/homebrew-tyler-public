class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.2"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.2/tyler_0.3.2_darwin_arm64.tar.gz"
      sha256 "3015a1054f492afc9171978710472609f6292034008a61a3c9b275ec8455c3cd"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.2/tyler_0.3.2_darwin_amd64.tar.gz"
      sha256 "181d01d6c9a549bf18ec2f12b198c24d3519c8de19e601304eaf8b468a029e04"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
