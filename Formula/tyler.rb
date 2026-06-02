class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.167.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.167.0/tyler_0.167.0_darwin_arm64.tar.gz"
      sha256 "3243ff7f0674f0fe8e36832a0f389a2cdea51bfab3405d76fde3d35af8b22836"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.167.0/tyler_0.167.0_darwin_amd64.tar.gz"
      sha256 "dea36380255b308155abd343bed6f2e3ac5ea89533613fe77a134baf5a64ace3"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
