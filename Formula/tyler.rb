class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.526.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.526.0/tyler_0.526.0_darwin_arm64.tar.gz"
      sha256 "9162fa9340a8c12d06071795078072255799af88ab7e7342557e8a3c18a00dd9"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.526.0/tyler_0.526.0_darwin_amd64.tar.gz"
      sha256 "108238f3a9150d22b33da4aeeb2732157f0a2f73176c89b7443c9b7d7c5f71ab"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
