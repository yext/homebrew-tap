# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-c6cfcc4486698067d91363cc1458aa88"
  version "0.1"
  sha256 "689d9dccfb1df53cec6562e7166b7161ff8689f68522e5f38c03652a503b8e55"
  revision 26

  def install
    mv "yext-c6cfcc4486698067d91363cc1458aa88", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
