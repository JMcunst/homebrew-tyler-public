class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.8.3"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.8.3/tyler_0.8.3_darwin_arm64.tar.gz"
      sha256 "21d38c8f6806eec13d08253302491c45937fb230dead35e83b166ba626071b8a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.8.3/tyler_0.8.3_darwin_amd64.tar.gz"
      sha256 "ea734284e33e74475f1e5bb96dede44672c7bab9f103ca5edbb6b6bcd870869f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
