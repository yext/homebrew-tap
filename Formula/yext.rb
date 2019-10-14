# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext"
  version "0.1"
  sha256 "45a119e4cc6c649174c248a9cff5efb73d3a13b9e6cdf234451492cc0c1f78f5"
  revision 2

  def install
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
