class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.380.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.380.0/tyler_0.380.0_darwin_arm64.tar.gz"
      sha256 "fcdc4ea7d8eabd7c7520b89378057c34b49676d35e2b515dba12a63e1f6c183f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.380.0/tyler_0.380.0_darwin_amd64.tar.gz"
      sha256 "4681a5adcb4fd483a8ac12c3a55f0d4045a5a75321bacb5340d344338dcdbf6a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
