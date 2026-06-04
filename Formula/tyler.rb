class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.199.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.199.0/tyler_0.199.0_darwin_arm64.tar.gz"
      sha256 "85e8649c6a27fbd52600df54ed79c71fddfa8e3ee17503048197ff45442f0abb"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.199.0/tyler_0.199.0_darwin_amd64.tar.gz"
      sha256 "5065ea2cf2199add6bdea97c90f3d52bb3ec8ffe586be8f288aea32bacf839f7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
