# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-be461ba389553267a4cbe740b6f160ba"
  version "0.1"
  sha256 "a847c7e20da38cf1dfbe6174fbe9e5d4ffac6a8295fd7eb9d715782cec6c191b"
  revision 21

  def install
    mv "yext-be461ba389553267a4cbe740b6f160ba", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
