class BytemarkClient < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "http://repo.bytemark.co.uk/bytemark-client/mac/bytemark-1.0.tar.gz"
  sha256 "bcb6130eba6bcf24d6b677bd61d0261622253e3560d480a63c97b9cac937778a"

  bottle :unneeded
  
  def install
    bin.install "bytemark"
    man1.mkpath
    man1.install "doc/bytemark.1"
  end

  test do
    system "bin/bytemark", "version"
  end
end
