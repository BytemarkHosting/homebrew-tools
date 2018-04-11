class BytemarkClientBeta < Formula
  desc "in-development version of the command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "https://repo.bytemark.co.uk/open-source/bytemark-client/develop/41312/mac/bytemark-3.0~beta1~41312.git3402e85.tar.gz"
  sha256 "af47b63c6f5517d108b6312073d920e2335e5f9d139e5fb63f47f366c9637af0"

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
