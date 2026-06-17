class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.419.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.419.0/tyler_0.419.0_darwin_arm64.tar.gz"
      sha256 "91352e8caf947df4a1e96a0231203a69dfb91c147cc0f07624fddbbe0a6ff3f4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.419.0/tyler_0.419.0_darwin_amd64.tar.gz"
      sha256 "5d397a99c4fbacc2fdd8e3635101675f31025c89297dae4c1cc6f343a63299b7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
