class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.110.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.110.0/tyler_2.110.0_darwin_arm64.tar.gz"
      sha256 "ce8ecb7a843563d0de6397b4b16970885332d2403298f393da07195256491aa9"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.110.0/tyler_2.110.0_darwin_amd64.tar.gz"
      sha256 "b91e8684d9748765b780284140d533b543b82b9784914ee840daa449fe67c0f4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
