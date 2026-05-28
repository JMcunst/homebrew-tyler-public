class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.74.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.74.0/tyler_0.74.0_darwin_arm64.tar.gz"
      sha256 "819b611d6cafdcd19d19c8e6bbfa2d0f832a05969f75cd9b410433e13e088535"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.74.0/tyler_0.74.0_darwin_amd64.tar.gz"
      sha256 "bd0356e431323ab89083d6735e33e31285767be64f0a6337d3251e01b7e92837"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
