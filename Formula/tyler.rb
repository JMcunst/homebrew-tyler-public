class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.278.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.278.0/tyler_0.278.0_darwin_arm64.tar.gz"
      sha256 "9afdfa3293e545b0fcafd90a29ff020601b986b7160042870d998e9af36ff4c2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.278.0/tyler_0.278.0_darwin_amd64.tar.gz"
      sha256 "71abaf176ee216d5d340e9209c52bea4dbae36d8b8aa4531168bdd2a7ad69546"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
