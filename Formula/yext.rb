# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-448fbf044f8861e49ae4b8ff3dc29269"
  version "0.1"
  sha256 "3070de38b827b10cce8795e3c91d78a3afc6b15069776778033d0fcf237a264a"
  revision 37

  def install
    mv "yext-448fbf044f8861e49ae4b8ff3dc29269", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
