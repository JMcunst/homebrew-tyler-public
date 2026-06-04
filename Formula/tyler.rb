class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.220.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.220.0/tyler_0.220.0_darwin_arm64.tar.gz"
      sha256 "b8a6a746c7a44772bc908e358e268d0ff04dd19bce8dc1d54172a4b0876a2acf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.220.0/tyler_0.220.0_darwin_amd64.tar.gz"
      sha256 "8d5b04867d32009deaa64a85e595619e6342d1d0c4bd271d985060aa0589d328"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
