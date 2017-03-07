class BytemarkClientBeta < Formula
  desc "in-development version of the command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "https://repo.bytemark.co.uk/open-source/bytemark-client/157-add-snapshot-version-number-to-version-go-or-something/23603/mac/bytemark-2.2~6853.gitb37973e.tar.gz"
  sha256 "c83f92a92e5bfd7546499652ad183d44bc4a17ede1ddfd74d1fc2f31bcc9ca9b"

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
