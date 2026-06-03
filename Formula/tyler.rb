class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.185.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.185.0/tyler_0.185.0_darwin_arm64.tar.gz"
      sha256 "745a1e76983d1187dc0e4138a2af0126a4356d5f76ecf4eda8b427f3c4d33c48"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.185.0/tyler_0.185.0_darwin_amd64.tar.gz"
      sha256 "6ccb5c489bf48983ca89f723fd3c39bfad5fc5a3c7d73c996eae158584f88e65"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
