class BytemarkClient < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bigv.io"
  url "http://repo.bytemark.co.uk/bytemark-client/osx/bytemark-0.4.268.tar.gz"
  sha256 "3d984e6875a67c140c624e0684e5c342aa1011e66f1b34785f11ce3df638ae21"

  bottle :unneeded

  def install
    bin.install "bytemark"
  end

  test do
    system "bin/bytemark", "version"
  end
end
