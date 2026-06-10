class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.271.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.271.0/tyler_0.271.0_darwin_arm64.tar.gz"
      sha256 "baeb253236b295b0862dbb89c5f5c0014ce3ecd09c5adf45a40686c7e334b502"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.271.0/tyler_0.271.0_darwin_amd64.tar.gz"
      sha256 "47e072a08b9aab7e54f874099f14ecdc3cef8e961855f400e0fe23c9ec2507da"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
