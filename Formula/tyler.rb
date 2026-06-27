class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.560.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.560.0/tyler_0.560.0_darwin_arm64.tar.gz"
      sha256 "63610d37269f82ef521fa9e20d9fbb61f2e7b7fd869b250a0a5ef8790069ba09"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.560.0/tyler_0.560.0_darwin_amd64.tar.gz"
      sha256 "e749654a057e3a2e790be61b25d025bb6923266e84eb5f37ad675ccdb569adc8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
