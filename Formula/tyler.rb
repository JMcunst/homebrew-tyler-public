class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.235.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.235.0/tyler_0.235.0_darwin_arm64.tar.gz"
      sha256 "73629591b7cede4b7bd0284b37fbd42c9381fd5680512724870d79313e08c5a2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.235.0/tyler_0.235.0_darwin_amd64.tar.gz"
      sha256 "862401349824a80faff5b233c9851e2ff8bc30f80fc1767bca1add952bfd3834"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
