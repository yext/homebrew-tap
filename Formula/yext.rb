# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-947884716263de9006b776b2269b0701"
  version "0.1"
  sha256 "3e0734c6e877f7379b83ef9627ee2ebd3a367d85b4e19bcf0309fe7f2725b86e"
  revision 36

  def install
    mv "yext-947884716263de9006b776b2269b0701", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
