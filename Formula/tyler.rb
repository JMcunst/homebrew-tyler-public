class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.273.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.273.0/tyler_0.273.0_darwin_arm64.tar.gz"
      sha256 "aa93d9db86c1aafb01fed378a7e395b1bb339ccbc374e41904ad8c8fb0e76ea4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.273.0/tyler_0.273.0_darwin_amd64.tar.gz"
      sha256 "7432b0278b0d8444a7004b6a53b6bdb708aa041e50e21ae327507e440f9e3c82"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
