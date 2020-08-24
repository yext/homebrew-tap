# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-9719a8bace881b671b855dc1046c3579"
  version "0.1"
  sha256 "a685c2d7eea8f76d71516011023742c0620c5ed4535ac222bf703c456a4a336e"
  revision 41

  def install
    mv "yext-9719a8bace881b671b855dc1046c3579", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
