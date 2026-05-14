class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.0/tyler_0.3.0_darwin_arm64.tar.gz"
      sha256 "0aca1d617a471b89fd67c739464a759ef6a9f2dc4f72b6d866b8d9c91d3ef911"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.0/tyler_0.3.0_darwin_amd64.tar.gz"
      sha256 "7ff4d52ce5aa37514b73674f8ac9e447601820b905b8983ee36cce3ee0ac789f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
