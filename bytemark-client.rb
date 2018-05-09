class BytemarkClient < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "https://repo.bytemark.co.uk/bytemark-client/mac/bytemark-3.1.tar.gz"
  sha256 "67edbfd8fcb9415eff85c7ceefa91d78a7a0af1b5a0d7a01c251a791bf49c764"

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
