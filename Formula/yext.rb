# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-98810a6a81f182b472be5e69db890be4"
  version "0.1"
  sha256 "1e1308f0313c2a27b8f61799fe9c0c88ef97afe600a7fcfb633a5753a4355e55"
  revision 27

  def install
    mv "yext-98810a6a81f182b472be5e69db890be4", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
