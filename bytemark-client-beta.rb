class BytemarkClientBeta < Formula
  desc "in-development version of the command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "https://repo.bytemark.co.uk/open-source/bytemark-client/develop/40700/mac/bytemark-3.0~beta1~40700.gite8379e3.tar.gz"
  sha256 "ab2276e2b91b0ff5ef6c0ad1d6669cbaf74e38107719af18ea9cc53f92d6ed69"

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
