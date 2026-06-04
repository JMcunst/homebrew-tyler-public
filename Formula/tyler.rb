class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.192.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.192.0/tyler_0.192.0_darwin_arm64.tar.gz"
      sha256 "06a0d3acccc27830509c87d0d80a6f08b04074e8c1b05844317f2ff6e15718ce"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.192.0/tyler_0.192.0_darwin_amd64.tar.gz"
      sha256 "9e700e671b9c7ec3c1845744bcc7c24e688b62ce1236df3e574a597d61af6de6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
