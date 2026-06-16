class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.365.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.365.0/tyler_0.365.0_darwin_arm64.tar.gz"
      sha256 "1d20db0220143524aac50f4049f6f6b17605f9f53267e62c9905c1ac1fcbb940"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.365.0/tyler_0.365.0_darwin_amd64.tar.gz"
      sha256 "2063948e7bf0dd340097bef9485bd32bf83d233e414706792ef6130cdbf9e23a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
