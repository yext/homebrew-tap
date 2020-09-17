# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-6cd01a63e735ed6e219ad43b422a95aa"
  version "0.1"
  sha256 "e7cf6c89a0476644335be6927adfdfcd9e6f567f06a82e68e0961c10a379d604"
  revision 46

  def install
    mv "yext-6cd01a63e735ed6e219ad43b422a95aa", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
