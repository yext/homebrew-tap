# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-cbf851aba770e48046320c396b0e4a3c"
  version "0.1"
  sha256 "3e0d048792398380c3ef1761c5d5437e5b76858de9cd95a81f72315a383a1212"
  revision 31

  def install
    mv "yext-cbf851aba770e48046320c396b0e4a3c", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
