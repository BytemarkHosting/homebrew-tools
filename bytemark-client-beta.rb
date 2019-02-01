class BytemarkClientBeta < Formula
  desc "in-development version of the command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "https://repo.bytemark.co.uk/open-source/bytemark-client/develop/90703/mac/bytemark-3.5~90703.gitd7b74eb.tar.gz"
  sha256 "c76c777563cef87a0bce178a64ccd2a988063a37d8b8e5798268c25e40c1952a"

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
