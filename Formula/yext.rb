# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-309dcd7a511e88b72ce9d6882b96fd74"
  version "0.1"
  sha256 "063d4a317e127c720ce0ca7a40189ff8b1dc5afbe47e9dc90932564c5a631895"
  revision 55

  def install
    mv "yext-309dcd7a511e88b72ce9d6882b96fd74", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
