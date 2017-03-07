class BytemarkClientBeta < Formula
  desc "in-development version of the command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "https://repo.bytemark.co.uk/open-source/bytemark-client/157-add-snapshot-version-number-to-version-go-or-something/6854/mac/bytemark-2.2~6854.gitdc82553.tar.gz"
  sha256 "1e6ec9d9c9ca23cddcf90903c8116fd074dff1ade4656fde5bee1bba979414c7"

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
