class BytemarkClient < Formula
  desc "command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "https://repo.bytemark.co.uk/bytemark-client/mac/bytemark-2.0.tar.gz"
  sha256 "320108f5fb747b71854debd945b16efef6bec7a47b1a8b034c0c77400674bd92"

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
