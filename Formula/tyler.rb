class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.527.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.527.0/tyler_0.527.0_darwin_arm64.tar.gz"
      sha256 "f7b9f8e50d258662c2093e46e58f83bb21f2201c46678d8542a2c0559eca70c2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.527.0/tyler_0.527.0_darwin_amd64.tar.gz"
      sha256 "e7ba2fb269e20cbd7ee42297ac8001ca681c5c26a86a1e524bb99068d56a2c80"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
