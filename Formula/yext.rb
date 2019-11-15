# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-4cdfd29132157c064eb517eedd04da84"
  version "0.1"
  sha256 "dfb8264471b75dde487ca453084302a58490b584636258f2f3eb3da0faf71f56"
  revision 8

  def install
    mv "yext-4cdfd29132157c064eb517eedd04da84", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
