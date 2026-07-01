class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.595.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.595.0/tyler_0.595.0_darwin_arm64.tar.gz"
      sha256 "42ea85c8ae4528dcf9f0aad88777cde9f32ebb0ee9c828e42942a65c0aeda933"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.595.0/tyler_0.595.0_darwin_amd64.tar.gz"
      sha256 "a97247c66840a70b15b5b3213c50a8a01079034396124a7a6fe1f812f49195e2"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
