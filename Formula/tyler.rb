class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.60.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.60.0/tyler_0.60.0_darwin_arm64.tar.gz"
      sha256 "f1aebb334316153c36d83b99e0bd430946eac3bca20a8d80b32c3105781dcb81"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.60.0/tyler_0.60.0_darwin_amd64.tar.gz"
      sha256 "375eba4a6d3b4fb08317b0197d6006ac2ab33366b03b08ad90aaa31bec882c74"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
