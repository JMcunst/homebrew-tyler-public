class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.10.3"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.10.3/tyler_0.10.3_darwin_arm64.tar.gz"
      sha256 "47261e849bfc3ca3cf337e957d92e92b103ab5094f615f01d194ddef7837e3f0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.10.3/tyler_0.10.3_darwin_amd64.tar.gz"
      sha256 "863b4a9f7d24bc9329fbcc8d2d32fb4205e3a639a66e5af6113356b923843bdc"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
