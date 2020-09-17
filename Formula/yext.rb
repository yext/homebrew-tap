# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-618c62d03494af531e4d07bc124533f7"
  version "0.1"
  sha256 "6f3ffed7f262456ea69054a4aed39fc52ab306ad0e75ce7ddb32bb5d576c4cb8"
  revision 43

  def install
    mv "yext-618c62d03494af531e4d07bc124533f7", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
