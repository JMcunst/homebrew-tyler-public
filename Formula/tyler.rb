class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.187.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.187.0/tyler_0.187.0_darwin_arm64.tar.gz"
      sha256 "486f42eb8b41e2b5b1943a48707ba511d1b54f8c4c6993958641e445bb98de81"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.187.0/tyler_0.187.0_darwin_amd64.tar.gz"
      sha256 "9eec751f57d6f844f8be8d52cb210523468eb9498f5878acde72a879102c5170"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
