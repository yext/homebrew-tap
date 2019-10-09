# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext"
  version "0.1"
  sha256 "0c8d9b8b7cbf095b534290a82050592d8a608197faabc89009c5b8346629ccac"
  revision 2

  def install
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
