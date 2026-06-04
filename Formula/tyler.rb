class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.194.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.194.0/tyler_0.194.0_darwin_arm64.tar.gz"
      sha256 "0494bd5a46066f771bd14d7876d7093084717f076eae35da20507d1e087bb20f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.194.0/tyler_0.194.0_darwin_amd64.tar.gz"
      sha256 "2f4a1351da809b27f2c979342e6bf9bc9d6f44ab2ecaaf876cf29acbb55ec0cb"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
