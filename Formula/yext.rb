# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-b44d356be5cd25f499ac1f2551e8754c"
  version "0.1"
  sha256 "dfb7ae82e532efb41ee8a8d7605dbd677f905b9e7029281a6a214311c7cf0e0e"
  revision 42

  def install
    mv "yext-b44d356be5cd25f499ac1f2551e8754c", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
