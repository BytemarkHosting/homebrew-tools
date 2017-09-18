class BytemarkClientBeta < Formula
  desc "in-development version of the command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "https://repo.bytemark.co.uk/open-source/bytemark-client/develop/14885/mac/bytemark-3.0~beta1~14885.gitfaf2dd1.tar.gz"
  sha256 "d8b75f85274bd64d9fa5f6de74bce21f80f7ce51ce47b9d24a2afc3d3ee41e58"

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
