class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.479.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.479.0/tyler_0.479.0_darwin_arm64.tar.gz"
      sha256 "9ed1afaf073b21a8043ae08dd162004dc6e06e52bb62804050b1f9354d77891e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.479.0/tyler_0.479.0_darwin_amd64.tar.gz"
      sha256 "64aa88441136766606aadac6d8edd3fd57885775a7d26d6e723b68bd5a4a54b0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
