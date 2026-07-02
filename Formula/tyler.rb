class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.598.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.598.0/tyler_0.598.0_darwin_arm64.tar.gz"
      sha256 "893cdb517acea312948bec609b2f5f15fb8c92cd783a15d6f8160c0c16b397ed"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.598.0/tyler_0.598.0_darwin_amd64.tar.gz"
      sha256 "b4b5b9bc10781100237194e9ce5dc27195edf8ffe49984adf5c9ce6fd286672d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
