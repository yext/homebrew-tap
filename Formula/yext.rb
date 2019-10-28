# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-6673303d58e9324a66acf00886165dab"
  version "0.1"
  sha256 "94d6c2a7da2d215b1cfe6d580154a8d23a259c3841fc2dd9a1dfd1e0769d2b09"
  revision 7

  def install
    mv "yext-6673303d58e9324a66acf00886165dab", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
