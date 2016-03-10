class BytemarkClient < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bigv.io"
  url "http://repo.bytemark.co.uk/bytemark-client/osx/bytemark-0.5.0.tar.gz"
  sha256 "e37de8c3a8d4cf50d7a3326ff0c93cd8aa39ddf877dca924070060d1806bea7e"

  bottle :unneeded

  def install
    bin.install "bytemark"
  end

  test do
    system "bin/bytemark", "version"
  end
end
