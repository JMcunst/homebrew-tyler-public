class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.557.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.557.0/tyler_0.557.0_darwin_arm64.tar.gz"
      sha256 "1d8072533cb7a633cf87d18cb59d0b1dd7c266559e7d374ef63319eff19dfd08"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.557.0/tyler_0.557.0_darwin_amd64.tar.gz"
      sha256 "092f08bd0ef3b47df651f05c7373aa9b63debec91ba9cfc43930a6fb5297b32d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
