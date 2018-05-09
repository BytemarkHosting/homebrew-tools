class BytemarkClient < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "https://repo.bytemark.co.uk/bytemark-client/mac/bytemark-3.1.tar.gz"
  sha256 "a40192984212d4a3fffd886d6a3eb3ba0e7fd920ecf8f750ffb497c276e8e4f1"

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
