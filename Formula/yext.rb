# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-cdafbbec4d88e51f6e93fde9eb084227"
  version "0.1"
  sha256 "b1917218ad3aa9267612e6bc826c02346aefc8bd362d1c231f476cb5e29cdfcc"
  revision 49

  def install
    mv "yext-cdafbbec4d88e51f6e93fde9eb084227", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
