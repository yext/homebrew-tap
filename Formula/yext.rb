# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext"
  version "0.1"
  sha256 "e21eefc089dc6218d6e1006a3116fff5fef4ec155b45271e88e837830cfdedf1"
  revision 2

  def install
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
