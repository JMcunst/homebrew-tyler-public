class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.454.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.454.0/tyler_0.454.0_darwin_arm64.tar.gz"
      sha256 "2395396d5886b9f4ed5031dc11f375a49d3098aedf702fbefa7a36ef537eb008"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.454.0/tyler_0.454.0_darwin_amd64.tar.gz"
      sha256 "4efc8efe5a03fb66f43d3b59f095894b21aa7c36c527582733d3250561bef645"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
