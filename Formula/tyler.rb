class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.252.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.252.0/tyler_0.252.0_darwin_arm64.tar.gz"
      sha256 "35352f31cbbe3653497d5ba86970b9c676ec88292f43c35af06b6510657f4adf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.252.0/tyler_0.252.0_darwin_amd64.tar.gz"
      sha256 "29682cf5d5fb04663a3028141ec7593630754de352151ad00a9ad956774137ff"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
