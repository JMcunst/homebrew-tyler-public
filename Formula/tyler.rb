class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.98.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.98.0/tyler_0.98.0_darwin_arm64.tar.gz"
      sha256 "c59e99f0efef39894f83fd4cbbe746cc3b33b3a68d2dad359e019629ace95c48"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.98.0/tyler_0.98.0_darwin_amd64.tar.gz"
      sha256 "410eae2321c051f96d12ecbf43f007f3fc92bb8fe25560908aed7e92d6820ff7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
