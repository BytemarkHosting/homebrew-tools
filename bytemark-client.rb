class BytemarkClient < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "http://repo.bytemark.co.uk/bytemark-client/osx/bytemark-0.7.0.tar.gz"
  sha256 "39b27f5808b417cd3fe86992fe1a7c44a1375ad5a3143312f15e40e2440b7663"

  bottle :unneeded

  def install
    bin.install "bytemark"
    #man1.mkpath
    #man1.install "doc/bytemark.1"
  end

  test do
    system "bin/bytemark", "version"
  end
end
