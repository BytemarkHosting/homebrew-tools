class BytemarkClient < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bigv.io"
  url "http://repo.bytemark.co.uk/bytemark-client/osx/bytemark-0.4.267.tar.gz"
  sha256 "f9f4ee1eccf0a0686fc3330abcfe0733f759052654cd6f585d006b21b86ebdf6"

  bottle :unneeded

  def install
    bin.install "bytemark"
  end

  test do
    system "bin/bytemark", "version"
  end
end
