# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-b859e6c77d78587fa4a2a56c0c002e7b"
  version "0.1"
  sha256 "e362c07efe7442c250877e531ccbc65df2aefd9fc6216f2c1a01df4ac454bb46"
  revision 51

  def install
    mv "yext-b859e6c77d78587fa4a2a56c0c002e7b", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
