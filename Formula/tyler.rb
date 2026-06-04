class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.217.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.217.0/tyler_0.217.0_darwin_arm64.tar.gz"
      sha256 "cd3d4d0ca3021de2b98a1883ef2492b3f665fa11fc3379c9c65b4b85fb8e6615"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.217.0/tyler_0.217.0_darwin_amd64.tar.gz"
      sha256 "362eb40aa1f63ddcfc1c45d30b319c370140598b115d05fa41545112c98fb97f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
