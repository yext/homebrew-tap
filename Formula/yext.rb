# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext"
  version "0.1"
  sha256 "39e09092d8c76e7dc8d178ffb8dd7c140319d94eb9b57da06493f02f902421de"
  revision 2

  def install
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
