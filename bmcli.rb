class Bmcli < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bigv.io"
  url "http://repo.bytemark.co.uk/bytemark-client/osx/bytemark-0.4.260.tar.gz"
  sha256 "a2a086a29698efd0c4a1bdd9202e1825b8fea56d8d72c63c49ec61cfc4edaa56"

  bottle :unneeded

  def install
    bin.install "bytemark"
  end

  test do
    system "bin/bytemark", "version"
  end
end
