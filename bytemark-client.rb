class BytemarkClient < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "https://repo.bytemark.co.uk/bytemark-client/mac/bytemark-2.2.tar.gz"
  sha256 "a90ff4afb1d9d94cbd9696e5953ca2b419492020823dee9f5f4ec28c44d5481f"

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
