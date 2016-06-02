class BytemarkClient < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "http://repo.bytemark.co.uk/bytemark-client/mac/bytemark-0.7.1.tar.gz"
  sha256 "f6a366a04d8f0b9a931acaaa84f658d4fd5cdc4223934aec82fde6987e138f10"

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
