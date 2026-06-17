class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.391.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.391.0/tyler_0.391.0_darwin_arm64.tar.gz"
      sha256 "cb51d985c0cdaf48c270cd35f0032b44c2f8273b92374f7a466eecd9a3fc1270"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.391.0/tyler_0.391.0_darwin_amd64.tar.gz"
      sha256 "cd5fa6f823204493d52361811a0461e4eada83e2e806774320c8f45e605e1101"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
