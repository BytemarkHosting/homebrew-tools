class BytemarkClient < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "http://repo.bytemark.co.uk/bytemark-client/mac/bytemark-0.7.1.tar.gz"
  sha256 "b98ff806b80ab037f85203acbb532cdd5f7772e4e463f2c78a9c68ad0bc14dd4"

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
