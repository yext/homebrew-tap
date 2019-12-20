# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-6002397e57ea985bf8c4410f954fba35"
  version "0.1"
  sha256 "e8a885576901e47fd148ab53596190813ba5156b449820b84f39799a8cbf4071"
  revision 16

  def install
    mv "yext-6002397e57ea985bf8c4410f954fba35", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
