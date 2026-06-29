class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.572.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.572.0/tyler_0.572.0_darwin_arm64.tar.gz"
      sha256 "e190f26999f4d76e376ac5d3a26af032e2416b0fefafd0f59cbad435d3b89a8e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.572.0/tyler_0.572.0_darwin_amd64.tar.gz"
      sha256 "1d90a2992dce151426fc3bee31dacb2c6758d17e982acbd91130b983acc7222e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
