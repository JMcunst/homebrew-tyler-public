class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.524.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.524.0/tyler_0.524.0_darwin_arm64.tar.gz"
      sha256 "2fd9638de2c7c55ad8d55bcbffc91ccc108d7201d171a7baea8a1310ebc3912f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.524.0/tyler_0.524.0_darwin_amd64.tar.gz"
      sha256 "571eb3eab99bd92b4b8dc8f5e8066df77bdf041ae27f5dbe147d515854e0e487"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
