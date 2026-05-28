class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.77.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.77.0/tyler_0.77.0_darwin_arm64.tar.gz"
      sha256 "fc2a15fc870ef4cb84d2a9904c23a38a7d96fc4ef7eaa2ff4f2f088d8019165f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.77.0/tyler_0.77.0_darwin_amd64.tar.gz"
      sha256 "082b41d65f81de47ccfb9a05e4c75388cc144ae82f67ab433ead6d67a919a225"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
