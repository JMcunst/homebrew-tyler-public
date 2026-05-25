class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.37.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.37.0/tyler_0.37.0_darwin_arm64.tar.gz"
      sha256 "fde501f8034067511e3aba4d2f1366ecd7ba21d60c9b4322cd56addf10c6e33c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.37.0/tyler_0.37.0_darwin_amd64.tar.gz"
      sha256 "15a3c43a5c70f4438e1468a4d83ef1088e0a11ee19e57197e205b5ea046b8133"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
