class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.361.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.361.0/tyler_0.361.0_darwin_arm64.tar.gz"
      sha256 "836977503faf195607422f4180cfff9b6e97d1c5f35cb7f519c01df278a73d47"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.361.0/tyler_0.361.0_darwin_amd64.tar.gz"
      sha256 "624953ac59a8716fc3c1919883c897ad43b44ec5c6c5358c528fec528e577205"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
