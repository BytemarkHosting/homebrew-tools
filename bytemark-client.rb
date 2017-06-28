class BytemarkClient < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "https://repo.bytemark.co.uk/bytemark-client/mac/bytemark-2.4.tar.gz"
  sha256 "005ccbc3ea2d29d06aa778d63447b938ab1279af84b38ba6d6a25b692d442eb2"

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
