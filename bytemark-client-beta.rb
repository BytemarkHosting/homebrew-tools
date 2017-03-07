class BytemarkClientBeta < Formula
  desc "in-development version of the command-line client for Bytemark services"
  homepage "https://bytemark.co.uk/docs/command-line"
  url "https://repo.bytemark.co.uk/open-source/bytemark-client/157-add-snapshot-version-number-to-version-go-or-something/23530/mac/bytemark-2.2.UNRELEASED.tar.gz"
  sha256 "38f68d2f95165de7417c33c08b2e3f0d2b52e94483da4d011f0c53fe15641c79"

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
