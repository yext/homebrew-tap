# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-7a6d2eddc820ba8400c05394a32b37b0"
  version "0.1"
  sha256 "96c8e2f94ea1b0e4241bf0a190f1534a4a60090be5cd014c84a6a15ac70bbcc5"
  revision 23

  def install
    mv "yext-7a6d2eddc820ba8400c05394a32b37b0", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
