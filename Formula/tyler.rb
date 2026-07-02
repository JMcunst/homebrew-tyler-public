class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.600.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.600.0/tyler_0.600.0_darwin_arm64.tar.gz"
      sha256 "e31e4b3882fa5205b9da500c8652dc77064e4b6fe774efab9f7eaa3010800690"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.600.0/tyler_0.600.0_darwin_amd64.tar.gz"
      sha256 "d382c0b942d525109da0f2e6b71d1f22f0ed92c39fd982592cc56939d7ef01af"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
