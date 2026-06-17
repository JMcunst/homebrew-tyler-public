class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.408.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.408.0/tyler_0.408.0_darwin_arm64.tar.gz"
      sha256 "29bc6f941ac715e503757c4a26a2183ff9b4f986e328c734ba1f63241b3380e4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.408.0/tyler_0.408.0_darwin_amd64.tar.gz"
      sha256 "98665b856eac35e138607e4eed90b731b4037026b9661257e1897d11c035f4fe"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
