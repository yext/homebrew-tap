# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-09eb33e936472d8faf40b25bc0b3e7bc"
  version "0.1"
  sha256 "dcaf4e781920e972176943e2c91cdbe9c9ddf1370b427c7ca5fcd6f7a0312444"
  revision 10

  def install
    mv "yext-09eb33e936472d8faf40b25bc0b3e7bc", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
