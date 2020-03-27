# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-e5016dbd1ae1244bf0d0d6737aeecf81"
  version "0.1"
  sha256 "2f8dbd30f699fbc22c8a580e703a1149fafb44e2364771b1e56dd13c617035d6"
  revision 32

  def install
    mv "yext-e5016dbd1ae1244bf0d0d6737aeecf81", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
