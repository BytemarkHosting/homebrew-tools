class BytemarkClientBeta < Formula
  desc "in-development version of the command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "https://repo.bytemark.co.uk/open-source/bytemark-client/157-add-snapshot-version-number-to-version-go-or-something/9836/mac/bytemark-2.2.1~9836.git488fdbc.tar.gz"
  sha256 "7671881dcea34983756e1fa746d10f33c2a7c99ff9f25d23c4fb7a9ef88d39cb"

  bottle :unneeded
  
  def install
    mv "bytemark", "bytemark-beta"
    mv "doc/bytemark.1", "doc/bytemark-beta.1"
    bin.install "bytemark-beta"
    man1.mkpath
    man1.install "doc/bytemark-beta.1"
  end

  test do
    system "bin/bytemark-beta", "version"
  end
end
