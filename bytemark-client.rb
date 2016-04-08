class BytemarkClient < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "http://repo.bytemark.co.uk/bytemark-client/osx/bytemark-0.6.0.tar.gz"
  sha256 "5adffe5b2189742625745086fce8f071ac8b99e038d633ea753f2c1fb0f07974"

  bottle :unneeded

  def install
    bin.install "bytemark"
  end

  test do
    system "bin/bytemark", "version"
  end
end
