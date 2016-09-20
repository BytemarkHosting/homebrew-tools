class BytemarkClient < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "http://repo.bytemark.co.uk/bytemark-client/mac/bytemark-1.1.tar.gz"
  sha256 "62a6d1bac33fdb69b270ca1b1fa9cfd16ab83e270c3626663714df5624d5306d"

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
