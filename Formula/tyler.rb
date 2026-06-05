class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.240.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.240.0/tyler_0.240.0_darwin_arm64.tar.gz"
      sha256 "180c535ddecc108a5ca1db733ef7a943c11c5b0c355a7930fd072afb75882c93"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.240.0/tyler_0.240.0_darwin_amd64.tar.gz"
      sha256 "0395f1fa10809ca432e8302243a13a23ee64d869d9981119eb3df3279c3edfd9"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
